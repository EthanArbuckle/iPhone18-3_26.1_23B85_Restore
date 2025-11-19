@interface ICPlatterMinimalAndromedaWaveformView
- (void)_appendSlices:(unint64_t)a3;
- (void)updateSlicesAndFrames;
@end

@implementation ICPlatterMinimalAndromedaWaveformView

- (void)updateSlicesAndFrames
{
  v3 = [(ICPlatterMinimalWaveformView *)self numberOfSlices];
  v4 = [(ICPlatterWaveformView *)self activeSliceQueue];
  v5 = [v4 count];

  if (v3 == v5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__ICPlatterMinimalAndromedaWaveformView_updateSlicesAndFrames__block_invoke;
    v6[3] = &unk_1E846B3D0;
    v6[4] = self;
    [(ICPlatterWaveformView *)self enumerateAllSlices:v6];
  }

  else
  {

    [(ICPlatterMinimalAndromedaWaveformView *)self _appendSlices:v3 - v5];
  }
}

- (void)_appendSlices:(unint64_t)a3
{
  if (a3)
  {
    v4 = a3;
    do
    {
      [(ICPlatterWaveformView *)self appendSliceWithType:0];
      --v4;
    }

    while (v4);
  }

  v17 = [(ICPlatterMinimalAndromedaWaveformView *)self _genericAmplitudes];
  v5 = [(ICPlatterWaveformView *)self activeSliceQueue];
  v6 = [v5 count];
  v7 = [v17 count];

  if (v6 == v7)
  {
    v8 = [(ICPlatterWaveformView *)self activeSliceQueue];
    v9 = [v8 count];

    if (v9)
    {
      v10 = 0;
      do
      {
        v11 = [(ICPlatterWaveformView *)self activeSliceQueue];
        v12 = [v11 objectAtIndexedSubscript:v10];

        v13 = [v17 objectAtIndexedSubscript:v10];
        [v13 floatValue];
        [v12 setAmplitude:v14];
        [v12 setAmplitudeNeedsUpdate:0];

        ++v10;
        v15 = [(ICPlatterWaveformView *)self activeSliceQueue];
        v16 = [v15 count];
      }

      while (v10 < v16);
    }
  }
}

@end