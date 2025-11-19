@interface BWPhotoDescriptor
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)presentationTimeStamp;
- (BOOL)isEqual:(id)a3;
- (BWPhotoDescriptor)initWithCoder:(id)a3;
- (BWPhotoDescriptor)initWithPhotoIdentifier:(id)a3 processingFlags:(unsigned int)a4;
- (BWPhotoDescriptor)initWithPhotoIdentifier:(id)a3 processingFlags:(unsigned int)a4 time:(id)a5 timeZone:(id)a6 presentationTimeStamp:(id *)a7;
- (NSDate)time;
- (NSTimeZone)timeZone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setPresentationTimeStamp:(id *)a3;
@end

@implementation BWPhotoDescriptor

- (BWPhotoDescriptor)initWithPhotoIdentifier:(id)a3 processingFlags:(unsigned int)a4
{
  v9.receiver = self;
  v9.super_class = BWPhotoDescriptor;
  v6 = [(BWPhotoDescriptor *)&v9 init];
  if (v6)
  {
    *(v6 + 1) = [a3 copy];
    *(v6 + 4) = a4;
    v7 = MEMORY[0x1E6960C70];
    *(v6 + 52) = *MEMORY[0x1E6960C70];
    *(v6 + 68) = *(v7 + 16);
  }

  return v6;
}

- (BWPhotoDescriptor)initWithPhotoIdentifier:(id)a3 processingFlags:(unsigned int)a4 time:(id)a5 timeZone:(id)a6 presentationTimeStamp:(id *)a7
{
  v16.receiver = self;
  v16.super_class = BWPhotoDescriptor;
  v12 = [(BWPhotoDescriptor *)&v16 init];
  if (v12)
  {
    v12->_photoIdentifier = [a3 copy];
    v12->_processingFlags = a4;
    [(BWPhotoDescriptor *)v12 setTime:a5];
    [(BWPhotoDescriptor *)v12 setTimeZone:a6];
    v14 = *&a7->var0;
    var3 = a7->var3;
    [(BWPhotoDescriptor *)v12 setPresentationTimeStamp:&v14];
  }

  return v12;
}

- (BWPhotoDescriptor)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = BWPhotoDescriptor;
  v4 = [(BWPhotoDescriptor *)&v9 init];
  if (v4)
  {
    v4->_photoIdentifier = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"photoIdentifer"];
    v4->_processingFlags = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"processingFlags", "unsignedIntValue"}];
    -[BWPhotoDescriptor setTime:](v4, "setTime:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"time"]);
    -[BWPhotoDescriptor setTimeZone:](v4, "setTimeZone:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"]);
    v5 = objc_opt_class();
    v6 = [a3 decodeDictionaryWithKeysOfClass:v5 objectsOfClass:objc_opt_class() forKey:@"timeStamp"];
    CMTimeMakeFromDictionary(&v8, v6);
    [(BWPhotoDescriptor *)v4 setPresentationTimeStamp:&v8];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_photoIdentifier forKey:@"photoIdentifer"];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_processingFlags), @"processingFlags"}];
  [a3 encodeObject:self->_time forKey:@"time"];
  [a3 encodeObject:self->_timeZone forKey:@"timeZone"];
  v5 = *MEMORY[0x1E695E480];
  *&v7.value = *(&self->_timeZoneHasBeenSet + 4);
  v7.epoch = *&self->_presentationTimeStamp.flags;
  v6 = CMTimeCopyAsDictionary(&v7, v5);
  [a3 encodeObject:v6 forKey:@"timeStamp"];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWPhotoDescriptor;
  [(BWPhotoDescriptor *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
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

  v7 = [(BWPhotoDescriptor *)self photoIdentifier];
  if (v7 != [a3 photoIdentifier])
  {
    v8 = -[NSString isEqual:](-[BWPhotoDescriptor photoIdentifier](self, "photoIdentifier"), "isEqual:", [a3 photoIdentifier]);
    if (!v8)
    {
      return v8;
    }
  }

  v9 = [(BWPhotoDescriptor *)self processingFlags];
  if (v9 != [a3 processingFlags])
  {
LABEL_13:
    LOBYTE(v8) = 0;
    return v8;
  }

  v10 = [(BWPhotoDescriptor *)self time];
  if (v10 == [a3 time] || (v8 = -[NSDate isEqual:](-[BWPhotoDescriptor time](self, "time"), "isEqual:", objc_msgSend(a3, "time"))) != 0)
  {
    v11 = [(BWPhotoDescriptor *)self timeZone];
    if (v11 == [a3 timeZone] || (v8 = -[NSTimeZone isEqual:](-[BWPhotoDescriptor timeZone](self, "timeZone"), "isEqual:", objc_msgSend(a3, "timeZone"))) != 0)
    {
      if (self)
      {
        [(BWPhotoDescriptor *)self presentationTimeStamp];
        if (a3)
        {
LABEL_12:
          [a3 presentationTimeStamp];
LABEL_18:
          LOBYTE(v8) = CMTimeCompare(&time1, &v13) == 0;
          return v8;
        }
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
        if (a3)
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

- (void)setPresentationTimeStamp:(id *)a3
{
  v3 = *&a3->var0;
  *&self->_presentationTimeStamp.flags = a3->var3;
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