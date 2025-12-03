@interface FigCaptureRecordingSettings
- (FigCaptureRecordingSettings)init;
- (FigCaptureRecordingSettings)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setMaxDuration:(id *)duration;
@end

@implementation FigCaptureRecordingSettings

- (FigCaptureRecordingSettings)init
{
  v3.receiver = self;
  v3.super_class = FigCaptureRecordingSettings;
  return [(FigCaptureRecordingSettings *)&v3 init];
}

- (FigCaptureRecordingSettings)initWithCoder:(id)coder
{
  v4 = [(FigCaptureRecordingSettings *)self init];
  if (v4)
  {
    -[FigCaptureRecordingSettings setSettingsID:](v4, "setSettingsID:", [coder decodeInt64ForKey:@"settingsID"]);
    -[FigCaptureRecordingSettings setOutputURL:](v4, "setOutputURL:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"outputURL"]);
    -[FigCaptureRecordingSettings setOutputFileType:](v4, "setOutputFileType:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"outputFileType"]);
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, objc_opt_class(), 0), @"maxDuration"}];
    if (v8)
    {
      CMTimeMakeFromDictionary(&v11, v8);
      v10 = v11;
      [(FigCaptureRecordingSettings *)v4 setMaxDuration:&v10];
    }

    -[FigCaptureRecordingSettings setMaxFileSize:](v4, "setMaxFileSize:", [coder decodeInt64ForKey:@"maxFileSize"]);
    -[FigCaptureRecordingSettings setMinFreeDiskSpaceLimit:](v4, "setMinFreeDiskSpaceLimit:", [coder decodeInt64ForKey:@"minFreeDiskSpaceLimit"]);
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt64:-[FigCaptureRecordingSettings settingsID](self forKey:{"settingsID"), @"settingsID"}];
  [coder encodeObject:-[FigCaptureRecordingSettings outputURL](self forKey:{"outputURL"), @"outputURL"}];
  [coder encodeObject:-[FigCaptureRecordingSettings outputFileType](self forKey:{"outputFileType"), @"outputFileType"}];
  if (self)
  {
    [(FigCaptureRecordingSettings *)self maxDuration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v5 = CMTimeCopyAsDictionary(&time, *MEMORY[0x1E695E480]);
  [coder encodeObject:v5 forKey:@"maxDuration"];
  CFRelease(v5);
  [coder encodeInt64:-[FigCaptureRecordingSettings maxFileSize](self forKey:{"maxFileSize"), @"maxFileSize"}];
  [coder encodeInt64:-[FigCaptureRecordingSettings minFreeDiskSpaceLimit](self forKey:{"minFreeDiskSpaceLimit"), @"minFreeDiskSpaceLimit"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setSettingsID:self->_settingsID];
  [v4 setOutputURL:self->_outputURL];
  [v4 setOutputFileType:self->_outputFileType];
  maxDuration = self->_maxDuration;
  [v4 setMaxDuration:&maxDuration];
  [v4 setMaxFileSize:self->_maxFileSize];
  [v4 setMinFreeDiskSpaceLimit:self->_minFreeDiskSpaceLimit];
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureRecordingSettings;
  [(FigCaptureRecordingSettings *)&v3 dealloc];
}

- (void)setMaxDuration:(id *)duration
{
  v3 = *&duration->var0;
  self->_maxDuration.epoch = duration->var3;
  *&self->_maxDuration.value = v3;
}

@end