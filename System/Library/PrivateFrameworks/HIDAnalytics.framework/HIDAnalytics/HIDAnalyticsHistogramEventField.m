@interface HIDAnalyticsHistogramEventField
- (HIDAnalyticsHistogramEventField)initWithAttributes:(id)a3 segments:(_HIDAnalyticsHistogramSegmentConfig *)a4 count:(int64_t)a5;
- (id)value;
- (void)createBuckets:(_HIDAnalyticsHistogramSegmentConfig *)a3 count:(int64_t)a4;
- (void)dealloc;
- (void)setIntegerValue:(unint64_t)a3;
- (void)setValue:(id)a3;
@end

@implementation HIDAnalyticsHistogramEventField

- (void)dealloc
{
  segments = self->_segments;
  if (segments)
  {
    v4 = -1;
    v5 = 8;
    while (++v4 < self->_segmentCount)
    {
      if (*(&segments->var0 + v5))
      {
        free(*(&segments->var0 + v5));
        segments = self->_segments;
      }

      v5 += 16;
      if (!segments)
      {
        goto LABEL_9;
      }
    }

    free(segments);
  }

LABEL_9:
  v6.receiver = self;
  v6.super_class = HIDAnalyticsHistogramEventField;
  [(HIDAnalyticsHistogramEventField *)&v6 dealloc];
}

- (id)value
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  segmentCount = self->_segmentCount;
  if (self->_segmentCount)
  {
    v6 = 0;
    segments = self->_segments;
    do
    {
      if (segments[v6].var0)
      {
        v8 = 0;
        v9 = 4;
        do
        {
          v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(segments[v6].var1 + v9)];
          [v4 addObject:v10];

          ++v8;
          segments = self->_segments;
          v9 += 6;
        }

        while (v8 < segments[v6].var0);
      }

      ++v6;
    }

    while (v6 != segmentCount);
  }

  objc_autoreleasePoolPop(v3);

  return v4;
}

- (HIDAnalyticsHistogramEventField)initWithAttributes:(id)a3 segments:(_HIDAnalyticsHistogramSegmentConfig *)a4 count:(int64_t)a5
{
  v9 = a3;
  v14.receiver = self;
  v14.super_class = HIDAnalyticsHistogramEventField;
  v10 = [(HIDAnalyticsHistogramEventField *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_fieldName, a3);
    [(HIDAnalyticsHistogramEventField *)v11 createBuckets:a4 count:a5];
    v12 = v11;
  }

  return v11;
}

- (void)setValue:(id)a3
{
  v4 = [a3 unsignedIntegerValue];
  segmentCount = self->_segmentCount;
  if (self->_segmentCount)
  {
    v6 = 0;
    v7 = vdupq_n_s64(0x10uLL);
    segments = self->_segments;
    do
    {
      v9 = &segments[v6];
      var0 = v9->var0;
      if (v9->var0)
      {
        v11 = (var0 + 15) & 0x1F0;
        v12 = var0 - 1;
        v13 = v9->var1 + 52;
        v14 = vdupq_n_s64(v12);
        v15 = xmmword_25092EC00;
        v16 = xmmword_25092EBF0;
        v17 = xmmword_25092EBE0;
        v18 = xmmword_25092EBD0;
        v19 = xmmword_25092EBC0;
        v20 = xmmword_25092EBB0;
        v21 = xmmword_25092EBA0;
        v22 = xmmword_25092EB90;
        do
        {
          v23 = vmovn_s64(vcgeq_u64(v14, v15));
          if (vuzp1_s8(vuzp1_s16(v23, 14), 14).u8[0])
          {
            *(v13 - 48) = v4;
          }

          if (vuzp1_s8(vuzp1_s16(v23, 14), 14).i8[1])
          {
            *(v13 - 42) = v4;
          }

          if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v14, *&v16))), 14).i8[2])
          {
            *(v13 - 36) = v4;
            *(v13 - 30) = v4;
          }

          v24 = vmovn_s64(vcgeq_u64(v14, v17));
          if (vuzp1_s8(14, vuzp1_s16(v24, 14)).i32[1])
          {
            *(v13 - 24) = v4;
          }

          if (vuzp1_s8(14, vuzp1_s16(v24, 14)).i8[5])
          {
            *(v13 - 18) = v4;
          }

          if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v14, *&v18)))).i8[6])
          {
            *(v13 - 12) = v4;
            *(v13 - 6) = v4;
          }

          v25 = vmovn_s64(vcgeq_u64(v14, v19));
          if (vuzp1_s8(vuzp1_s16(v25, 14), 14).u8[0])
          {
            *v13 = v4;
          }

          if (vuzp1_s8(vuzp1_s16(v25, 14), 14).i8[1])
          {
            v13[6] = v4;
          }

          if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v14, *&v20))), 14).i8[2])
          {
            v13[12] = v4;
            v13[18] = v4;
          }

          v26 = vmovn_s64(vcgeq_u64(v14, v21));
          if (vuzp1_s8(14, vuzp1_s16(v26, 14)).i32[1])
          {
            v13[24] = v4;
          }

          if (vuzp1_s8(14, vuzp1_s16(v26, 14)).i8[5])
          {
            v13[30] = v4;
          }

          if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v14, *&v22)))).i8[6])
          {
            v13[36] = v4;
            v13[42] = v4;
          }

          v17 = vaddq_s64(v17, v7);
          v16 = vaddq_s64(v16, v7);
          v15 = vaddq_s64(v15, v7);
          v18 = vaddq_s64(v18, v7);
          v19 = vaddq_s64(v19, v7);
          v20 = vaddq_s64(v20, v7);
          v21 = vaddq_s64(v21, v7);
          v13 += 96;
          v22 = vaddq_s64(v22, v7);
          v11 -= 16;
        }

        while (v11);
        segmentCount = self->_segmentCount;
      }

      ++v6;
    }

    while (v6 < segmentCount);
  }
}

- (void)createBuckets:(_HIDAnalyticsHistogramSegmentConfig *)a3 count:(int64_t)a4
{
  v24 = *MEMORY[0x277D85DE8];
  self->_segmentCount = a4;
  v7 = malloc_type_malloc(16 * a4, 0x10200408CB94CA5uLL);
  self->_segments = v7;
  bzero(v7, 16 * self->_segmentCount);
  if (a4 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x277D86220];
    do
    {
      v10 = &a3[v8];
      var3 = v10->var3;
      if (var3 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v10->var3;
      }

      if (var3 >= 2 && os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        fieldName = self->_fieldName;
        *buf = 134218242;
        v21 = v12;
        v22 = 2112;
        v23 = fieldName;
        _os_log_impl(&dword_25092B000, v9, OS_LOG_TYPE_DEFAULT, "HIDAnalytics higher value normalizer %llu for field %@ , reduce to 1 ", buf, 0x16u);
      }

      var2 = v10->var2;
      var0 = v10->var0;
      self->_segments[v8].var0 = var0;
      self->_segments[v8].var1 = malloc_type_malloc(6 * var0, 0x10000405D080610uLL);
      bzero(self->_segments[v8].var1, 6 * v10->var0);
      v16 = v10->var0;
      if (v10->var0)
      {
        var1 = v10->var1;
        v18 = (self->_segments[v8].var1 + 2);
        do
        {
          *(v18 - 1) = var2;
          var2 += var1;
          *v18 = var2;
          v18 += 3;
          --v16;
        }

        while (v16);
      }

      ++v8;
    }

    while (v8 != a4);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)setIntegerValue:(unint64_t)a3
{
  segmentCount = self->_segmentCount;
  if (self->_segmentCount)
  {
    v4 = 0;
    segments = self->_segments;
    while (1)
    {
      v6 = &segments[v4];
      var0 = v6->var0;
      if (v6->var0)
      {
        break;
      }

LABEL_15:
      if (++v4 == segmentCount)
      {
        return;
      }
    }

    v8 = 0;
    v9 = var0 - 1;
    v10 = 6 * (var0 - 1);
    v11 = 6 * var0;
    while (1)
    {
      if (v8 || (v12 = v6->var1, a3 > *v12))
      {
        if (v10 != v8)
        {
          var1 = v6->var1;
LABEL_11:
          v12 = (var1 + v8);
          if (a3 <= *(var1 + v8) || a3 > *(v12 + 1))
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        var1 = v6->var1;
        v12 = (var1 + 6 * v9);
        if (a3 <= *(v12 + 1))
        {
          goto LABEL_11;
        }
      }

LABEL_13:
      ++*(v12 + 4);
LABEL_14:
      v8 += 6;
      if (v11 == v8)
      {
        goto LABEL_15;
      }
    }
  }
}

@end