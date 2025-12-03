@interface BWInferenceSortedFusionTrackCropDescriptor
- (BOOL)applicableToSampleBuffer:(opaqueCMSampleBuffer *)buffer forMediaKey:(id)key;
- (BWInferenceSortedFusionTrackCropDescriptor)initWithIdentifier:(char)identifier orderedFusionTrackIndex:(int)index;
- (CGRect)rectForSampleBuffer:(opaqueCMSampleBuffer *)buffer;
@end

@implementation BWInferenceSortedFusionTrackCropDescriptor

- (BWInferenceSortedFusionTrackCropDescriptor)initWithIdentifier:(char)identifier orderedFusionTrackIndex:(int)index
{
  v7.receiver = self;
  v7.super_class = BWInferenceSortedFusionTrackCropDescriptor;
  result = [(BWInferenceSortedFusionTrackCropDescriptor *)&v7 init];
  if (result)
  {
    result->_identifier = identifier;
    result->_orderedFusionTrackIndex = index;
  }

  return result;
}

- (CGRect)rectForSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v4 = CMGetAttachment(buffer, @"SortedFusionTrackerCrops", 0);
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

- (BOOL)applicableToSampleBuffer:(opaqueCMSampleBuffer *)buffer forMediaKey:(id)key
{
  v5 = CMGetAttachment(buffer, @"SortedFusionTrackerCrops", 0);
  if (v5)
  {
    LOBYTE(v5) = CFArrayGetCount(v5) > self->_orderedFusionTrackIndex;
  }

  return v5;
}

@end