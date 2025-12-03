@interface BWPhotoDescriptor
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)presentationTimeStamp;
- (BOOL)isEqual:(id)equal;
- (BWPhotoDescriptor)initWithCoder:(id)coder;
- (BWPhotoDescriptor)initWithPhotoIdentifier:(id)identifier processingFlags:(unsigned int)flags;
- (BWPhotoDescriptor)initWithPhotoIdentifier:(id)identifier processingFlags:(unsigned int)flags time:(id)time timeZone:(id)zone presentationTimeStamp:(id *)stamp;
- (NSDate)time;
- (NSTimeZone)timeZone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setPresentationTimeStamp:(id *)stamp;
@end

@implementation BWPhotoDescriptor

- (BWPhotoDescriptor)initWithPhotoIdentifier:(id)identifier processingFlags:(unsigned int)flags
{
  v9.receiver = self;
  v9.super_class = BWPhotoDescriptor;
  v6 = [(BWPhotoDescriptor *)&v9 init];
  if (v6)
  {
    *(v6 + 1) = [identifier copy];
    *(v6 + 4) = flags;
    v7 = MEMORY[0x1E6960C70];
    *(v6 + 52) = *MEMORY[0x1E6960C70];
    *(v6 + 68) = *(v7 + 16);
  }

  return v6;
}

- (BWPhotoDescriptor)initWithPhotoIdentifier:(id)identifier processingFlags:(unsigned int)flags time:(id)time timeZone:(id)zone presentationTimeStamp:(id *)stamp
{
  v16.receiver = self;
  v16.super_class = BWPhotoDescriptor;
  v12 = [(BWPhotoDescriptor *)&v16 init];
  if (v12)
  {
    v12->_photoIdentifier = [identifier copy];
    v12->_processingFlags = flags;
    [(BWPhotoDescriptor *)v12 setTime:time];
    [(BWPhotoDescriptor *)v12 setTimeZone:zone];
    v14 = *&stamp->var0;
    var3 = stamp->var3;
    [(BWPhotoDescriptor *)v12 setPresentationTimeStamp:&v14];
  }

  return v12;
}

- (BWPhotoDescriptor)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = BWPhotoDescriptor;
  v4 = [(BWPhotoDescriptor *)&v9 init];
  if (v4)
  {
    v4->_photoIdentifier = [coder decodeObjectOfClass:objc_opt_class() forKey:@"photoIdentifer"];
    v4->_processingFlags = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"processingFlags", "unsignedIntValue"}];
    -[BWPhotoDescriptor setTime:](v4, "setTime:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"time"]);
    -[BWPhotoDescriptor setTimeZone:](v4, "setTimeZone:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"]);
    v5 = objc_opt_class();
    v6 = [coder decodeDictionaryWithKeysOfClass:v5 objectsOfClass:objc_opt_class() forKey:@"timeStamp"];
    CMTimeMakeFromDictionary(&v8, v6);
    [(BWPhotoDescriptor *)v4 setPresentationTimeStamp:&v8];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_photoIdentifier forKey:@"photoIdentifer"];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_processingFlags), @"processingFlags"}];
  [coder encodeObject:self->_time forKey:@"time"];
  [coder encodeObject:self->_timeZone forKey:@"timeZone"];
  v5 = *MEMORY[0x1E695E480];
  *&v7.value = *(&self->_timeZoneHasBeenSet + 4);
  v7.epoch = *&self->_presentationTimeStamp.flags;
  v6 = CMTimeCopyAsDictionary(&v7, v5);
  [coder encodeObject:v6 forKey:@"timeStamp"];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWPhotoDescriptor;
  [(BWPhotoDescriptor *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v8) = 1;
    return v8;
  }

  v15 = v3;
  v16 = v4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  photoIdentifier = [(BWPhotoDescriptor *)self photoIdentifier];
  if (photoIdentifier != [equal photoIdentifier])
  {
    v8 = -[NSString isEqual:](-[BWPhotoDescriptor photoIdentifier](self, "photoIdentifier"), "isEqual:", [equal photoIdentifier]);
    if (!v8)
    {
      return v8;
    }
  }

  processingFlags = [(BWPhotoDescriptor *)self processingFlags];
  if (processingFlags != [equal processingFlags])
  {
LABEL_13:
    LOBYTE(v8) = 0;
    return v8;
  }

  time = [(BWPhotoDescriptor *)self time];
  if (time == [equal time] || (v8 = -[NSDate isEqual:](-[BWPhotoDescriptor time](self, "time"), "isEqual:", objc_msgSend(equal, "time"))) != 0)
  {
    timeZone = [(BWPhotoDescriptor *)self timeZone];
    if (timeZone == [equal timeZone] || (v8 = -[NSTimeZone isEqual:](-[BWPhotoDescriptor timeZone](self, "timeZone"), "isEqual:", objc_msgSend(equal, "timeZone"))) != 0)
    {
      if (self)
      {
        [(BWPhotoDescriptor *)self presentationTimeStamp];
        if (equal)
        {
LABEL_12:
          [equal presentationTimeStamp];
LABEL_18:
          LOBYTE(v8) = CMTimeCompare(&time1, &v13) == 0;
          return v8;
        }
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
        if (equal)
        {
          goto LABEL_12;
        }
      }

      memset(&v13, 0, sizeof(v13));
      goto LABEL_18;
    }
  }

  return v8;
}

- (NSDate)time
{
  v2 = self->_time;

  return v2;
}

- (NSTimeZone)timeZone
{
  v2 = self->_timeZone;

  return v2;
}

- (void)setPresentationTimeStamp:(id *)stamp
{
  v3 = *&stamp->var0;
  *&self->_presentationTimeStamp.flags = stamp->var3;
  *(&self->_timeZoneHasBeenSet + 4) = v3;
  BYTE4(self->_presentationTimeStamp.epoch) = 1;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)presentationTimeStamp
{
  *&retstr->var0 = *(&self[2].var0 + 4);
  retstr->var3 = *(&self[2].var3 + 4);
  return self;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p>: ", objc_opt_class(), self];
  v4 = *MEMORY[0x1E695E480];
  *&time.value = *(&self->_timeZoneHasBeenSet + 4);
  time.epoch = *&self->_presentationTimeStamp.flags;
  v5 = CMTimeCopyDescription(v4, &time);
  [v3 appendFormat:@"identifier: %@, flags: %@, time: %@, timeZone: %@, presentationTimeStamp: %@", self->_photoIdentifier, FigAppleMakerNoteStillImageProcessingFlagsToShortString(self->_processingFlags), self->_time, self->_timeZone, v5];

  return v3;
}

@end