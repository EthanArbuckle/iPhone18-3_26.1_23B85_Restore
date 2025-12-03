@interface BBSound
- (BBSound)initWithCoder:(id)coder;
- (BBSound)initWithToneAlert:(int64_t)alert;
- (BBSound)initWithToneAlertConfiguration:(id)configuration;
- (BOOL)ignoreRingerSwitch;
- (BOOL)isEqual:(id)equal;
- (NSString)accountIdentifier;
- (NSString)toneIdentifier;
- (NSString)vibrationIdentifier;
- (id)awakeAfterUsingCoder:(id)coder;
- (id)description;
- (id)replacementObjectForCoder:(id)coder;
- (int64_t)alertType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BBSound

- (id)description
{
  soundType = [(BBSound *)self soundType];
  switch(soundType)
  {
    case 2:
      v18 = MEMORY[0x277CCACA8];
      alertConfiguration = [(BBSound *)self alertConfiguration];
      v8 = [v18 stringWithFormat:@"alertConfiguration: %@ ", alertConfiguration];;
      v9 = @"ToneAlert";
      goto LABEL_12;
    case 1:
      v10 = MEMORY[0x277CCACA8];
      alertConfiguration = [(BBSound *)self ringtoneName];
      if ([(BBSound *)self isRepeating])
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      [(BBSound *)self maxDuration];
      v13 = v12;
      vibrationPattern = [(BBSound *)self vibrationPattern];
      audioCategory = [(BBSound *)self audioCategory];
      v16 = audioCategory;
      v17 = @"Default";
      if (audioCategory)
      {
        v17 = audioCategory;
      }

      v8 = [v10 stringWithFormat:@"name: %@ repeats: %@; maxDuration: %lf; vibPattern: %@; audioCategory: %@", alertConfiguration, v11, v13, vibrationPattern, v17];;

      v9 = @"Ringtone";
      goto LABEL_12;
    case 0:
      v4 = MEMORY[0x277CCACA8];
      systemSoundID = [(BBSound *)self systemSoundID];
      soundBehavior = [(BBSound *)self soundBehavior];
      alertConfiguration = [(BBSound *)self vibrationPattern];
      v8 = [v4 stringWithFormat:@"soundID: %u behavior: %lu; vibPattern: %@", systemSoundID, soundBehavior, alertConfiguration];;
      v9 = @"SystemSound";
LABEL_12:

      goto LABEL_14;
  }

  v9 = 0;
  v8 = 0;
LABEL_14:
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@: %p [%@] %@>", objc_opt_class(), self, v9, v8];;

  return v19;
}

- (unint64_t)hash
{
  v3 = 1 << ([(BBSound *)self soundType]+ 8);
  alertConfiguration = [(BBSound *)self alertConfiguration];
  v5 = [alertConfiguration hash] + v3;

  audioCategory = [(BBSound *)self audioCategory];
  v7 = v5 + [audioCategory hash];

  v8 = MEMORY[0x277CCABB0];
  [(BBSound *)self maxDuration];
  v9 = [v8 numberWithDouble:?];
  v10 = v7 + [v9 hash];

  v11 = v10 + [(BBSound *)self isRepeating];
  ringtoneName = [(BBSound *)self ringtoneName];
  v13 = [ringtoneName hash];

  v14 = v11 + v13 + [(BBSound *)self soundBehavior];
  v15 = v14 + [(BBSound *)self systemSoundID];
  vibrationPattern = [(BBSound *)self vibrationPattern];
  v17 = [vibrationPattern hash];

  return v15 + v17;
}

- (BBSound)initWithToneAlert:(int64_t)alert
{
  v4 = [objc_alloc(MEMORY[0x277D71F58]) initWithType:alert];
  v5 = [(BBSound *)self initWithToneAlertConfiguration:v4];

  return v5;
}

- (BBSound)initWithToneAlertConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v8.receiver = self;
  v8.super_class = BBSound;
  v5 = [(BBSound *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BBSound *)v5 setSoundType:2];
    [configurationCopy setPrefersToDisallowExternalPlayback:1];
    [(BBSound *)v6 setAlertConfiguration:configurationCopy];
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = equalCopy;
      alertConfiguration = [(BBSound *)self alertConfiguration];
      alertConfiguration2 = [(BBSound *)v5 alertConfiguration];
      if (BSEqualObjects())
      {
        audioCategory = [(BBSound *)self audioCategory];
        audioCategory2 = [(BBSound *)v5 audioCategory];
        if (BSEqualObjects() && ([(BBSound *)self maxDuration], [(BBSound *)v5 maxDuration], BSFloatEqualToFloat()) && (v10 = [(BBSound *)self isRepeating], v10 == [(BBSound *)v5 isRepeating]))
        {
          ringtoneName = [(BBSound *)self ringtoneName];
          ringtoneName2 = [(BBSound *)v5 ringtoneName];
          if (BSEqualObjects() && (v15 = [(BBSound *)self soundBehavior], v15 == [(BBSound *)v5 soundBehavior]) && (v16 = [(BBSound *)self soundType], v16 == [(BBSound *)v5 soundType]) && (v17 = [(BBSound *)self systemSoundID], v17 == [(BBSound *)v5 systemSoundID]))
          {
            vibrationPattern = [(BBSound *)self vibrationPattern];
            vibrationPattern2 = [(BBSound *)v5 vibrationPattern];
            v11 = BSEqualObjects();
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BBSound)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = BBSound;
  v5 = [(BBSound *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alertConfiguration"];
    [(BBSound *)v5 setAlertConfiguration:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"audioCategory"];
    [(BBSound *)v5 setAudioCategory:v7];

    [coderCopy decodeDoubleForKey:@"maxDuration"];
    [(BBSound *)v5 setMaxDuration:?];
    -[BBSound setRepeats:](v5, "setRepeats:", [coderCopy decodeBoolForKey:@"repeats"]);
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ringtoneName"];
    [(BBSound *)v5 setRingtoneName:v8];

    -[BBSound setSoundBehavior:](v5, "setSoundBehavior:", [coderCopy decodeInt32ForKey:@"soundBehavior"]);
    -[BBSound setSoundType:](v5, "setSoundType:", [coderCopy decodeInt32ForKey:@"soundType"]);
    -[BBSound setSystemSoundID:](v5, "setSystemSoundID:", [coderCopy decodeInt32ForKey:@"systemSoundID"]);
    v9 = BBAllowedClasses();
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"vibrationPattern"];
    [(BBSound *)v5 setVibrationPattern:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  alertConfiguration = [(BBSound *)self alertConfiguration];
  [coderCopy encodeObject:alertConfiguration forKey:@"alertConfiguration"];

  audioCategory = [(BBSound *)self audioCategory];
  [coderCopy encodeObject:audioCategory forKey:@"audioCategory"];

  [(BBSound *)self maxDuration];
  [coderCopy encodeDouble:@"maxDuration" forKey:?];
  [coderCopy encodeBool:-[BBSound isRepeating](self forKey:{"isRepeating"), @"repeats"}];
  ringtoneName = [(BBSound *)self ringtoneName];
  [coderCopy encodeObject:ringtoneName forKey:@"ringtoneName"];

  [coderCopy encodeInteger:-[BBSound soundBehavior](self forKey:{"soundBehavior"), @"soundBehavior"}];
  [coderCopy encodeInteger:-[BBSound soundType](self forKey:{"soundType"), @"soundType"}];
  [coderCopy encodeInt32:-[BBSound systemSoundID](self forKey:{"systemSoundID"), @"systemSoundID"}];
  vibrationPattern = [(BBSound *)self vibrationPattern];
  [coderCopy encodeObject:vibrationPattern forKey:@"vibrationPattern"];
}

- (id)replacementObjectForCoder:(id)coder
{
  bb_objectCache = [self bb_objectCache];
  v5 = [bb_objectCache cacheObject:self];

  return v5;
}

- (id)awakeAfterUsingCoder:(id)coder
{
  bb_objectCache = [self bb_objectCache];
  v5 = [bb_objectCache cacheObject:self];

  return v5;
}

- (int64_t)alertType
{
  alertConfiguration = [(BBSound *)self alertConfiguration];
  type = [alertConfiguration type];

  return type;
}

- (NSString)accountIdentifier
{
  alertConfiguration = [(BBSound *)self alertConfiguration];
  topic = [alertConfiguration topic];

  return topic;
}

- (NSString)toneIdentifier
{
  alertConfiguration = [(BBSound *)self alertConfiguration];
  toneIdentifier = [alertConfiguration toneIdentifier];

  return toneIdentifier;
}

- (NSString)vibrationIdentifier
{
  alertConfiguration = [(BBSound *)self alertConfiguration];
  vibrationIdentifier = [alertConfiguration vibrationIdentifier];

  return vibrationIdentifier;
}

- (BOOL)ignoreRingerSwitch
{
  alertConfiguration = [(BBSound *)self alertConfiguration];
  shouldIgnoreRingerSwitch = [alertConfiguration shouldIgnoreRingerSwitch];

  return shouldIgnoreRingerSwitch;
}

@end