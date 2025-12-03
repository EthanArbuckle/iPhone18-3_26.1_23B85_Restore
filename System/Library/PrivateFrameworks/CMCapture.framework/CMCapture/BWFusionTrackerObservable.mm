@interface BWFusionTrackerObservable
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)frameTimestamp;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)lastDetectionTimestamp;
- (CGRect)box;
- (char)initWithKind:(__int128 *)kind box:(uint64_t)box confidence:(void *)confidence timestamp:(double)timestamp identifier:(double)identifier metadata:(double)metadata;
- (void)dealloc;
@end

@implementation BWFusionTrackerObservable

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWFusionTrackerObservable;
  [(BWFusionTrackerObservable *)&v3 dealloc];
}

- (CGRect)box
{
  x = self->_box.origin.x;
  y = self->_box.origin.y;
  width = self->_box.size.width;
  height = self->_box.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)frameTimestamp
{
  *&retstr->var0 = *(&self[2].var0 + 4);
  retstr->var3 = *(&self[2].var3 + 4);
  return self;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)lastDetectionTimestamp
{
  *&retstr->var0 = *(&self[2].var0 + 4);
  retstr->var3 = *(&self[2].var3 + 4);
  return self;
}

- (char)initWithKind:(__int128 *)kind box:(uint64_t)box confidence:(void *)confidence timestamp:(double)timestamp identifier:(double)identifier metadata:(double)metadata
{
  if (!self)
  {
    return 0;
  }

  v23.receiver = self;
  v23.super_class = BWFusionTrackerObservable;
  v19 = objc_msgSendSuper2(&v23, sel_init);
  v20 = v19;
  if (v19)
  {
    *(v19 + 5) = a2;
    *(v19 + 1) = timestamp;
    *(v19 + 2) = identifier;
    *(v19 + 3) = metadata;
    *(v19 + 4) = a9;
    *(v19 + 12) = a10;
    *(v19 + 14) = box;
    v21 = *kind;
    *(v19 + 68) = *(kind + 2);
    *(v19 + 52) = v21;
    *(v19 + 13) = confidence;
  }

  return v20;
}

@end