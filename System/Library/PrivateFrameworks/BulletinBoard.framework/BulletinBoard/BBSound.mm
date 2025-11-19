@interface BBSound
- (BBSound)initWithCoder:(id)a3;
- (BBSound)initWithToneAlert:(int64_t)a3;
- (BBSound)initWithToneAlertConfiguration:(id)a3;
- (BOOL)ignoreRingerSwitch;
- (BOOL)isEqual:(id)a3;
- (NSString)accountIdentifier;
- (NSString)toneIdentifier;
- (NSString)vibrationIdentifier;
- (id)awakeAfterUsingCoder:(id)a3;
- (id)description;
- (id)replacementObjectForCoder:(id)a3;
- (int64_t)alertType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BBSound

- (id)description
{
  v3 = [(BBSound *)self soundType];
  switch(v3)
  {
    case 2:
      v18 = MEMORY[0x277CCACA8];
      v7 = [(BBSound *)self alertConfiguration];
      v8 = [v18 stringWithFormat:@"alertConfiguration: %@ ", v7];;
      v9 = @"ToneAlert";
      goto LABEL_12;
    case 1:
      v10 = MEMORY[0x277CCACA8];
      v7 = [(BBSound *)self ringtoneName];
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
      v14 = [(BBSound *)self vibrationPattern];
      v15 = [(BBSound *)self audioCategory];
      v16 = v15;
      v17 = @"Default";
      if (v15)
      {
        v17 = v15;
      }

      v8 = [v10 stringWithFormat:@"name: %@ repeats: %@; maxDuration: %lf; vibPattern: %@; audioCategory: %@", v7, v11, v13, v14, v17];;

      v9 = @"Ringtone";
      goto LABEL_12;
    case 0:
      v4 = MEMORY[0x277CCACA8];
      v5 = [(BBSound *)self systemSoundID];
      v6 = [(BBSound *)self soundBehavior];
      v7 = [(BBSound *)self vibrationPattern];
      v8 = [v4 stringWithFormat:@"soundID: %u behavior: %lu; vibPattern: %@", v5, v6, v7];;
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
  v4 = [(BBSound *)self alertConfiguration];
  v5 = [v4 hash] + v3;

  v6 = [(BBSound *)self audioCategory];
  v7 = v5 + [v6 hash];

  v8 = MEMORY[0x277CCABB0];
  [(BBSound *)self maxDuration];
  v9 = [v8 numberWithDouble:?];
  v10 = v7 + [v9 hash];

  v11 = v10 + [(BBSound *)self isRepeating];
  v12 = [(BBSound *)self ringtoneName];
  v13 = [v12 hash];

  v14 = v11 + v13 + [(BBSound *)self soundBehavior];
  v15 = v14 + [(BBSound *)self systemSoundID];
  v16 = [(BBSound *)self vibrationPattern];
  v17 = [v16 hash];

  return v15 + v17;
}

- (BBSound)initWithToneAlert:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277D71F58]) initWithType:a3];
  v5 = [(BBSound *)self initWithToneAlertConfiguration:v4];

  return v5;
}

- (BBSound)initWithToneAlertConfiguration:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BBSound;
  v5 = [(BBSound *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BBSound *)v5 setSoundType:2];
    [v4 setPrefersToDisallowExternalPlayback:1];
    [(BBSound *)v6 setAlertConfiguration:v4];
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = v4;
      v6 = [(BBSound *)self alertConfiguration];
      v7 = [(BBSound *)v5 alertConfiguration];
      if (BSEqualObjects())
      {
        v8 = [(BBSound *)self audioCategory];
        v9 = [(BBSound *)v5 audioCategory];
        if (BSEqualObjects() && ([(BBSound *)self maxDuration], [(BBSound *)v5 maxDuration], BSFloatEqualToFloat()) && (v10 = [(BBSound *)self isRepeating], v10 == [(BBSound *)v5 isRepeating]))
        {
          v13 = [(BBSound *)self ringtoneName];
          v14 = [(BBSound *)v5 ringtoneName];
          if (BSEqualObjects() && (v15 = [(BBSound *)self soundBehavior], v15 == [(BBSound *)v5 soundBehavior]) && (v16 = [(BBSound *)self soundType], v16 == [(BBSound *)v5 soundType]) && (v17 = [(BBSound *)self systemSoundID], v17 == [(BBSound *)v5 systemSoundID]))
          {
            v19 = [(BBSound *)self vibrationPattern];
            v18 = [(BBSound *)v5 vibrationPattern];
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

- (BBSound)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = BBSound;
  v5 = [(BBSound *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alertConfiguration"];
    [(BBSound *)v5 setAlertConfiguration:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"audioCategory"];
    [(BBSound *)v5 setAudioCategory:v7];

    [v4 decodeDoubleForKey:@"maxDuration"];
    [(BBSound *)v5 setMaxDuration:?];
    -[BBSound setRepeats:](v5, "setRepeats:", [v4 decodeBoolForKey:@"repeats"]);
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ringtoneName"];
    [(BBSound *)v5 setRingtoneName:v8];

    -[BBSound setSoundBehavior:](v5, "setSoundBehavior:", [v4 decodeInt32ForKey:@"soundBehavior"]);
    -[BBSound setSoundType:](v5, "setSoundType:", [v4 decodeInt32ForKey:@"soundType"]);
    -[BBSound setSystemSoundID:](v5, "setSystemSoundID:", [v4 decodeInt32ForKey:@"systemSoundID"]);
    v9 = BBAllowedClasses();
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"vibrationPattern"];
    [(BBSound *)v5 setVibrationPattern:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BBSound *)self alertConfiguration];
  [v4 encodeObject:v5 forKey:@"alertConfiguration"];

  v6 = [(BBSound *)self audioCategory];
  [v4 encodeObject:v6 forKey:@"audioCategory"];

  [(BBSound *)self maxDuration];
  [v4 encodeDouble:@"maxDuration" forKey:?];
  [v4 encodeBool:-[BBSound isRepeating](self forKey:{"isRepeating"), @"repeats"}];
  v7 = [(BBSound *)self ringtoneName];
  [v4 encodeObject:v7 forKey:@"ringtoneName"];

  [v4 encodeInteger:-[BBSound soundBehavior](self forKey:{"soundBehavior"), @"soundBehavior"}];
  [v4 encodeInteger:-[BBSound soundType](self forKey:{"soundType"), @"soundType"}];
  [v4 encodeInt32:-[BBSound systemSoundID](self forKey:{"systemSoundID"), @"systemSoundID"}];
  v8 = [(BBSound *)self vibrationPattern];
  [v4 encodeObject:v8 forKey:@"vibrationPattern"];
}

- (id)replacementObjectForCoder:(id)a3
{
  v4 = [self bb_objectCache];
  v5 = [v4 cacheObject:self];

  return v5;
}

- (id)awakeAfterUsingCoder:(id)a3
{
  v4 = [self bb_objectCache];
  v5 = [v4 cacheObject:self];

  return v5;
}

- (int64_t)alertType
{
  v2 = [(BBSound *)self alertConfiguration];
  v3 = [v2 type];

  return v3;
}

- (NSString)accountIdentifier
{
  v2 = [(BBSound *)self alertConfiguration];
  v3 = [v2 topic];

  return v3;
}

- (NSString)toneIdentifier
{
  v2 = [(BBSound *)self alertConfiguration];
  v3 = [v2 toneIdentifier];

  return v3;
}

- (NSString)vibrationIdentifier
{
  v2 = [(BBSound *)self alertConfiguration];
  v3 = [v2 vibrationIdentifier];

  return v3;
}

- (BOOL)ignoreRingerSwitch
{
  v2 = [(BBSound *)self alertConfiguration];
  v3 = [v2 shouldIgnoreRingerSwitch];

  return v3;
}

@end