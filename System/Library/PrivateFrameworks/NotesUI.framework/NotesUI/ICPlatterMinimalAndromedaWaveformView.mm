@interface ICPlatterMinimalAndromedaWaveformView
- (void)_appendSlices:(unint64_t)slices;
- (void)updateSlicesAndFrames;
@end

@implementation ICPlatterMinimalAndromedaWaveformView

- (void)updateSlicesAndFrames
{
  numberOfSlices = [(ICPlatterMinimalWaveformView *)self numberOfSlices];
  activeSliceQueue = [(ICPlatterWaveformView *)self activeSliceQueue];
  v5 = [activeSliceQueue count];

  if (numberOfSlices == v5)
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

    [(ICPlatterMinimalAndromedaWaveformView *)self _appendSlices:numberOfSlices - v5];
  }
}

- (void)_appendSlices:(unint64_t)slices
{
  if (slices)
  {
    slicesCopy = slices;
    do
    {
      [(ICPlatterWaveformView *)self appendSliceWithType:0];
      --slicesCopy;
    }

    while (slicesCopy);
  }

  _genericAmplitudes = [(ICPlatterMinimalAndromedaWaveformView *)self _genericAmplitudes];
  activeSliceQueue = [(ICPlatterWaveformView *)self activeSliceQueue];
  v6 = [activeSliceQueue count];
  v7 = [_genericAmplitudes count];

  if (v6 == v7)
  {
    activeSliceQueue2 = [(ICPlatterWaveformView *)self activeSliceQueue];
    v9 = [activeSliceQueue2 count];

    if (v9)
    {
      v10 = 0;
      do
      {
        activeSliceQueue3 = [(ICPlatterWaveformView *)self activeSliceQueue];
        v12 = [activeSliceQueue3 objectAtIndexedSubscript:v10];

        v13 = [_genericAmplitudes objectAtIndexedSubscript:v10];
        [v13 floatValue];
        [v12 setAmplitude:v14];
        [v12 setAmplitudeNeedsUpdate:0];

        ++v10;
        activeSliceQueue4 = [(ICPlatterWaveformView *)self activeSliceQueue];
        v16 = [activeSliceQueue4 count];
      }

      while (v10 < v16);
    }
  }
}

@end