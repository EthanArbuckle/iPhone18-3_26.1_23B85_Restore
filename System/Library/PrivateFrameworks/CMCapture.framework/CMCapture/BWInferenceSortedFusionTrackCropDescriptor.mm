@interface BWInferenceSortedFusionTrackCropDescriptor
- (BOOL)applicableToSampleBuffer:(opaqueCMSampleBuffer *)a3 forMediaKey:(id)a4;
- (BWInferenceSortedFusionTrackCropDescriptor)initWithIdentifier:(char)a3 orderedFusionTrackIndex:(int)a4;
- (CGRect)rectForSampleBuffer:(opaqueCMSampleBuffer *)a3;
@end

@implementation BWInferenceSortedFusionTrackCropDescriptor

- (BWInferenceSortedFusionTrackCropDescriptor)initWithIdentifier:(char)a3 orderedFusionTrackIndex:(int)a4
{
  v7.receiver = self;
  v7.super_class = BWInferenceSortedFusionTrackCropDescriptor;
  result = [(BWInferenceSortedFusionTrackCropDescriptor *)&v7 init];
  if (result)
  {
    result->_identifier = a3;
    result->_orderedFusionTrackIndex = a4;
  }

  return result;
}

- (CGRect)rectForSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v4 = CMGetAttachment(a3, @"SortedFusionTrackerCrops", 0);
  v9 = *MEMORY[0x1E695F050];
  v10 = *(MEMORY[0x1E695F050] + 16);
  if (v4 && CFArrayGetCount(v4) > self->_orderedFusionTrackIndex)
  {
    FigCFArrayGetCGRectAtIndex();
  }

  v6 = *(&v9 + 1);
  v5 = *&v9;
  v8 = *(&v10 + 1);
  v7 = *&v10;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (BOOL)applicableToSampleBuffer:(opaqueCMSampleBuffer *)a3 forMediaKey:(id)a4
{
  v5 = CMGetAttachment(a3, @"SortedFusionTrackerCrops", 0);
  if (v5)
  {
    LOBYTE(v5) = CFArrayGetCount(v5) > self->_orderedFusionTrackIndex;
  }

  return v5;
}

@end