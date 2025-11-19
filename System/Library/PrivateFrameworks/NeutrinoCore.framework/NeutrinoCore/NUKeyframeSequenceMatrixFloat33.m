@interface NUKeyframeSequenceMatrixFloat33
- (NUKeyframeSequenceMatrixFloat33)initWithCount:(unint64_t)a3 times:(id *)a4 values:(id *)a5;
- (__n128)valueOfKeyframeAtIndex:(uint64_t)a3;
- (uint64_t)sampleAtTime:(__int128 *)a3;
- (void)dealloc;
@end

@implementation NUKeyframeSequenceMatrixFloat33

- (uint64_t)sampleAtTime:(__int128 *)a3
{
  v3 = a1;
  if (*(a3 + 12))
  {
    v9 = *a3;
    v10 = *(a3 + 2);
    v6 = [a1 indexOfKeyframeAtOrBeforeTime:&v9];
    if ([v3 interpolation])
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:v3 file:@"NUKeyframeSequence.m" lineNumber:799 description:@"Don't know how to interpolate transforms"];
    }

    a1 = v3;
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  return [a1 valueOfKeyframeAtIndex:v4];
}

- (__n128)valueOfKeyframeAtIndex:(uint64_t)a3
{
  if (a1[5])
  {
    v5 = [a1 count] - 1;
    if (v5 >= a3)
    {
      v5 = a3;
    }

    v6 = a1[5] + 48 * (v5 & ~(v5 >> 63));
  }

  else
  {
    v6 = MEMORY[0x1E69E9B10];
  }

  return *v6;
}

- (void)dealloc
{
  values = self->_values;
  if (values)
  {
    free(values);
  }

  v4.receiver = self;
  v4.super_class = NUKeyframeSequenceMatrixFloat33;
  [(NUKeyframeSequence *)&v4 dealloc];
}

- (NUKeyframeSequenceMatrixFloat33)initWithCount:(unint64_t)a3 times:(id *)a4 values:(id *)a5
{
  v17.receiver = self;
  v17.super_class = NUKeyframeSequenceMatrixFloat33;
  v7 = [(NUKeyframeSequence *)&v17 initWithInterpolation:0 count:a3 times:a4];
  if (a3)
  {
    v8 = malloc_type_calloc(a3, 0x30uLL, 0x1000040EED21634uLL);
    v9 = 0;
    v7->_values = v8;
    v10 = 1;
    do
    {
      v11 = 3 * v9;
      v12 = (v7->_values + 16 * v11);
      v13 = (a5 + 16 * v11);
      v14 = *v13;
      v15 = v13[2];
      v12[1] = v13[1];
      v12[2] = v15;
      *v12 = v14;
      v9 = v10++;
    }

    while (v9 < a3);
  }

  return v7;
}

@end