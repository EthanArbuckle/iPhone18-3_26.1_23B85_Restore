@interface NUKeyframeSequence
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeOfKeyframeAtIndex:(SEL)a3;
- (NUKeyframeSequence)init;
- (NUKeyframeSequence)initWithInterpolation:(int64_t)a3 count:(unint64_t)a4 times:(id *)a5;
- (NUKeyframeSequence)initWithKeyframeSequence:(id)a3;
- (int64_t)indexOfKeyframeAtOrBeforeTime:(id *)a3;
- (uint64_t)interpolantAtTime:(uint64_t)a3@<X8>;
- (void)dealloc;
@end

@implementation NUKeyframeSequence

- (uint64_t)interpolantAtTime:(uint64_t)a3@<X8>
{
  if ((*(a2 + 12) & 1) == 0)
  {
    goto LABEL_2;
  }

  v6 = result;
  result = [result interpolation];
  if (result == 2)
  {
    *&time1.start.value = *a2;
    time1.start.epoch = *(a2 + 2);
    v13 = [v6 indexOfKeyframeAtOrBeforeTime:&time1];
    memset(&time1, 0, 24);
    [v6 timeOfKeyframeAtIndex:v13];
    memset(&time2, 0, 24);
    [v6 timeOfKeyframeAtIndex:v13 + 1];
    if (v13 || (*&end.start.value = *&time1.start.value, end.start.epoch = time1.start.epoch, lhs = *a2, result = CMTimeCompare(&end.start, &lhs), result < 1))
    {
      result = [v6 count];
      if (v13 + 1 < result)
      {
        v14.i64[0] = 0;
        v15.i64[0] = v13;
        v25 = vdupq_lane_s64(vceqq_s64(v15, v14).i64[0], 0);
        memset(&end, 0, 24);
        lhs = time2.start;
        rhs = time1.start;
        CMTimeSubtract(&end.start, &lhs, &rhs);
        memset(&lhs, 0, sizeof(lhs));
        rhs = *a2;
        v30 = time1.start;
        CMTimeSubtract(&lhs, &rhs, &v30);
        v16 = lhs.value / lhs.timescale / (end.start.value / end.start.timescale);
        v17 = 1.0 - v16;
        v18.f64[0] = v16 * 2.0 + 1.0;
        v19.f64[0] = v17 * v17;
        v18.f64[1] = end.start.value / end.start.timescale;
        v19.f64[1] = v16 * (v17 * v17);
        v20 = vmulq_f64(v18, v19);
        v26 = vbslq_s8(v25, *&v20.f64[0], v20);
        v20.f64[0] = v16 * -2.0 + 3.0;
        v21.f64[0] = v16 * v16;
        v20.f64[1] = end.start.value / end.start.timescale;
        v21.f64[1] = -(v21.f64[0] * v17);
        v24 = vmulq_f64(v20, v21);
        result = [v6 count];
        v22.i64[0] = v13 + 2;
        v23.i64[0] = result;
        *(a3 + 16) = vbslq_s8(vdupq_lane_s64(vcgtq_s64(v23, v22).i64[0], 0), v24, v24.u64[0]);
        v4 = v26;
        goto LABEL_3;
      }
    }

    goto LABEL_2;
  }

  if (result != 1)
  {
    if (result)
    {
      return result;
    }

LABEL_2:
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    v4 = xmmword_1C03C2770;
LABEL_3:
    *a3 = v4;
    return result;
  }

  *&time1.start.value = *a2;
  time1.start.epoch = *(a2 + 2);
  v7 = [v6 indexOfKeyframeAtOrBeforeTime:&time1];
  memset(&lhs, 0, sizeof(lhs));
  [v6 timeOfKeyframeAtIndex:v7];
  if (!v7)
  {
    time1.start = lhs;
    *&time2.start.value = *a2;
    time2.start.epoch = *(a2 + 2);
    result = CMTimeCompare(&time1.start, &time2.start);
    if (result >= 1)
    {
      goto LABEL_2;
    }
  }

  memset(&rhs, 0, sizeof(rhs));
  [v6 timeOfKeyframeAtIndex:v7 + 1];
  time1.start = lhs;
  time2.start = rhs;
  result = CMTimeCompare(&time1.start, &time2.start);
  if (result)
  {
    memset(&time1, 0, sizeof(time1));
    time2.start = lhs;
    end.start = rhs;
    CMTimeRangeFromTimeToTime(&time1, &time2.start, &end.start);
    memset(&v30, 0, sizeof(v30));
    CMTimeMake(&end.start, 1, 1);
    start = **&MEMORY[0x1E6960CC0];
    CMTimeRangeMake(&time2, &start, &end.start);
    v8 = *a2;
    start.epoch = *(a2 + 2);
    end = time1;
    *&start.value = v8;
    result = CMTimeMapTimeFromRangeToRange(&v30, &start, &end, &time2);
    v9.f64[0] = (v30.timescale - v30.value);
    v9.f64[1] = v30.value;
    v10 = vdupq_lane_s64(COERCE__INT64(v30.timescale), 0);
    v11 = vdivq_f64(v9, v10);
    v12 = vdivq_f64(0, v10);
  }

  else
  {
    v11 = xmmword_1C03C2770;
    v12 = 0uLL;
  }

  *a3 = v11;
  *(a3 + 16) = v12;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeOfKeyframeAtIndex:(SEL)a3
{
  if (self->var3)
  {
    v6 = self;
    self = [($3CC8671D27C23BF42ADDB32F2B5E48AE *)self count];
    v7 = &self[-1].var3 + 7;
    if (&self[-1].var3 + 7 >= a4)
    {
      v7 = a4;
    }

    v8 = v6->var3 + 24 * (v7 & ~(v7 >> 63));
  }

  else
  {
    v8 = MEMORY[0x1E6960C70];
  }

  *&retstr->var0 = *v8;
  retstr->var3 = *(v8 + 16);
  return self;
}

- (int64_t)indexOfKeyframeAtOrBeforeTime:(id *)a3
{
  if ((a3->var2 & 1) == 0)
  {
    return 0;
  }

  v22 = v3;
  v23 = v4;
  if (!self->_times)
  {
    return 0;
  }

  count = self->_count;
  if (count < 2)
  {
    return 0;
  }

  v9 = count - 1;
  if (count < 5)
  {
    v15 = 1;
  }

  else
  {
    v10 = 0;
    v11 = 9;
    do
    {
      v12 = &self->_times[v10 + (v9 - v10) / 2];
      v13 = *&v12->var0;
      time1.epoch = v12->var3;
      *&time1.value = v13;
      v20 = *a3;
      if (CMTimeCompare(&time1, &v20) >= 1)
      {
        v9 = v10 + (v9 - v10) / 2;
      }

      else
      {
        v10 += (v9 - v10) / 2;
      }
    }

    while (v9 - v10 >= 4 && v11-- != 0);
    v15 = v10 + 1;
  }

  if (v15 <= v9)
  {
    v16 = v9 + 1;
    for (i = v15; ; ++i)
    {
      v18 = &self->_times[i];
      v19 = *&v18->var0;
      time1.epoch = v18->var3;
      *&time1.value = v19;
      v20 = *a3;
      if (CMTimeCompare(&time1, &v20) > 0)
      {
        break;
      }

      if (v16 == ++v15)
      {
        v15 = v16;
        return v15 - 1;
      }
    }
  }

  return v15 - 1;
}

- (void)dealloc
{
  times = self->_times;
  if (times && self->_ownsTimes)
  {
    free(times);
  }

  v4.receiver = self;
  v4.super_class = NUKeyframeSequence;
  [(NUKeyframeSequence *)&v4 dealloc];
}

- (NUKeyframeSequence)initWithKeyframeSequence:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NUKeyframeSequence;
  v5 = [(NUKeyframeSequence *)&v8 init];
  v5->_interpolation = [v4 interpolation];
  v5->_count = [v4 count];
  if (v4)
  {
    v6 = v4[2];
  }

  else
  {
    v6 = 0;
  }

  v5->_times = v6;
  v5->_ownsTimes = 0;

  return v5;
}

- (NUKeyframeSequence)initWithInterpolation:(int64_t)a3 count:(unint64_t)a4 times:(id *)a5
{
  v11.receiver = self;
  v11.super_class = NUKeyframeSequence;
  v8 = [(NUKeyframeSequence *)&v11 init];
  v8->_interpolation = a3;
  v8->_count = a4;
  if (a4)
  {
    v9 = malloc_type_calloc(a4, 0x18uLL, 0x1000040504FFAC1uLL);
    v8->_times = v9;
    v8->_ownsTimes = 1;
    memcpy(v9, a5, 24 * a4);
  }

  return v8;
}

- (NUKeyframeSequence)init
{
  v3.receiver = self;
  v3.super_class = NUKeyframeSequence;
  result = [(NUKeyframeSequence *)&v3 init];
  result->_interpolation = 0;
  result->_count = 0;
  return result;
}

@end