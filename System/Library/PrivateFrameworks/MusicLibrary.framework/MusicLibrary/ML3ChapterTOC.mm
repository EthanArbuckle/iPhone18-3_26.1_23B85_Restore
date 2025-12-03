@interface ML3ChapterTOC
- (ML3ChapterTOC)initWithChapterDataRef:(ChapterData *)ref track:(id)track;
@end

@implementation ML3ChapterTOC

- (ML3ChapterTOC)initWithChapterDataRef:(ChapterData *)ref track:(id)track
{
  trackCopy = track;
  v8 = [trackCopy valueForProperty:@"item_extra.total_time_ms"];
  v11.receiver = self;
  v11.super_class = ML3ChapterTOC;
  v9 = -[MLITChapterTOC initWithChapterDataRef:totalTimeInMS:](&v11, sel_initWithChapterDataRef_totalTimeInMS_, ref, [v8 unsignedIntValue]);

  if (v9)
  {
    objc_storeStrong(&v9->_track, track);
  }

  return v9;
}

@end