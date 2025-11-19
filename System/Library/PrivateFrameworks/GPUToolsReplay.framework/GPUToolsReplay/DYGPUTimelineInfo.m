@interface DYGPUTimelineInfo
- (DYGPUTimelineInfo)init;
- (DYGPUTimelineInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateActiveShadersForAllSamples:(id)a3;
- (void)enumerateActiveShadersForSampleAtIndex:(unsigned int)a3 withBlock:(id)a4;
@end

@implementation DYGPUTimelineInfo

- (void)enumerateActiveShadersForSampleAtIndex:(unsigned int)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = [(NSData *)self->_activeShadersPerPeriodicSample bytes];
  v8 = [(NSData *)self->_activeShadersPerPeriodicSample length];
  v9 = [(NSData *)self->_activeCoreInfoMasksPerPeriodicSample bytes];
  v10 = [(NSData *)self->_activeCoreInfoMasksPerPeriodicSample length];
  v11 = [(NSData *)self->_numActiveShadersPerPeriodicSample bytes];
  if (a3 < [(NSData *)self->_numActiveShadersPerPeriodicSample length]>> 3)
  {
    v21 = 0;
    v12 = &v11[8 * a3];
    v13 = *v12;
    if (*v12)
    {
      v14 = 0;
      v15 = v8 >> 3;
      do
      {
        v16 = v14 + v12[1];
        v18 = v10 < 8 || v10 >> 3 > v16;
        if (v15 > v16 && v18)
        {
          if (v10 >= 8)
          {
            v20 = &v9[8 * v16];
          }

          else
          {
            v20 = 0;
          }

          v6[2](v6, v7 + 8 * v16, v20, v14, &v21);
          if (v21)
          {
            break;
          }

          v13 = *v12;
        }

        v14 = (v14 + 1);
      }

      while (v14 < v13);
    }
  }
}

- (void)enumerateActiveShadersForAllSamples:(id)a3
{
  v4 = a3;
  v5 = [(NSData *)self->_activeShadersPerPeriodicSample bytes];
  v6 = [(NSData *)self->_activeShadersPerPeriodicSample length];
  v7 = [(NSData *)self->_activeCoreInfoMasksPerPeriodicSample bytes];
  v8 = [(NSData *)self->_activeCoreInfoMasksPerPeriodicSample length];
  v21 = [(NSData *)self->_numActiveShadersPerPeriodicSample bytes];
  v9 = [(NSData *)self->_numActiveShadersPerPeriodicSample length];
  v22 = 0;
  if (v9 >= 8)
  {
    v10 = 0;
    v11 = v6 >> 3;
    v20 = v9 >> 3;
    do
    {
      v12 = &v21[8 * v10];
      v13 = *v12;
      if (*v12)
      {
        v14 = 0;
        do
        {
          v15 = v14 + v12[1];
          v17 = v8 < 8 || v8 >> 3 > v15;
          if (v11 > v15 && v17)
          {
            if (v8 >= 8)
            {
              v19 = &v7[8 * v15];
            }

            else
            {
              v19 = 0;
            }

            v4[2](v4, v5 + 8 * v15, v19, v10, v14, &v22);
            if (v22)
            {
              goto LABEL_2;
            }

            v13 = *v12;
          }

          v14 = (v14 + 1);
        }

        while (v14 < v13);
      }

      ++v10;
    }

    while (v10 != v20);
  }

LABEL_2:
}

- (DYGPUTimelineInfo)init
{
  v6.receiver = self;
  v6.super_class = DYGPUTimelineInfo;
  v2 = [(DYGPUTimelineInfo *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:self->_numPeriodicSamples forKey:@"numPeriodicSamples"];
  [v4 encodeObject:self->_timestamps forKey:@"timestamps"];
  [v4 encodeObject:self->_derivedCounters forKey:@"derivedCounters"];
  [v4 encodeObject:self->_derivedCounterNames forKey:@"derivedCounterNames"];
  [v4 encodeObject:self->_activeShadersPerPeriodicSample forKey:@"activeShadersPerPeriodicSample"];
  [v4 encodeObject:self->_activeCoreInfoMasksPerPeriodicSample forKey:@"activeCoreInfoMasksPerPeriodicSample"];
  [v4 encodeObject:self->_numActiveShadersPerPeriodicSample forKey:@"numActiveShadersPerPeriodicSample"];
  [v4 encodeObject:self->_encoderTimelineInfos forKey:@"encoderTimelineInfos"];
  [v4 encodeObject:self->_metalFXTimelineInfo forKey:@"metalFXTimelineInfo"];
}

- (DYGPUTimelineInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v49.receiver = self;
  v49.super_class = DYGPUTimelineInfo;
  v5 = [(DYGPUTimelineInfo *)&v49 init];
  if (v5)
  {
    v5->_numPeriodicSamples = [v4 decodeIntForKey:@"numPeriodicSamples"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"timestamps"];
    timestamps = v5->_timestamps;
    v5->_timestamps = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"derivedCounters"];
    derivedCounters = v5->_derivedCounters;
    v5->_derivedCounters = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v16 setWithObjects:{v17, v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"derivedCounterNames"];
    derivedCounterNames = v5->_derivedCounterNames;
    v5->_derivedCounterNames = v20;

    v22 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"activeShadersPerPeriodicSample"];
    activeShadersPerPeriodicSample = v5->_activeShadersPerPeriodicSample;
    v5->_activeShadersPerPeriodicSample = v25;

    v27 = MEMORY[0x277CBEB98];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [v4 decodeObjectOfClasses:v29 forKey:@"activeCoreInfoMasksPerPeriodicSample"];
    activeCoreInfoMasksPerPeriodicSample = v5->_activeCoreInfoMasksPerPeriodicSample;
    v5->_activeCoreInfoMasksPerPeriodicSample = v30;

    v32 = MEMORY[0x277CBEB98];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"numActiveShadersPerPeriodicSample"];
    numActiveShadersPerPeriodicSample = v5->_numActiveShadersPerPeriodicSample;
    v5->_numActiveShadersPerPeriodicSample = v35;

    v37 = MEMORY[0x277CBEB98];
    v38 = objc_opt_class();
    v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
    v40 = [v4 decodeObjectOfClasses:v39 forKey:@"encoderTimelineInfos"];
    encoderTimelineInfos = v5->_encoderTimelineInfos;
    v5->_encoderTimelineInfos = v40;

    v42 = MEMORY[0x277CBEB98];
    v43 = objc_opt_class();
    v44 = [v42 setWithObjects:{v43, objc_opt_class(), 0}];
    v45 = [v4 decodeObjectOfClasses:v44 forKey:@"metalFXTimelineInfo"];
    metalFXTimelineInfo = v5->_metalFXTimelineInfo;
    v5->_metalFXTimelineInfo = v45;

    v47 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setNumPeriodicSamples:{-[DYGPUTimelineInfo numPeriodicSamples](self, "numPeriodicSamples")}];
  v5 = [(DYGPUTimelineInfo *)self timestamps];
  v6 = [v5 copy];
  [v4 setTimestamps:v6];

  v7 = [(DYGPUTimelineInfo *)self derivedCounters];
  v8 = [v7 copy];
  [v4 setDerivedCounters:v8];

  v9 = [(DYGPUTimelineInfo *)self derivedCounterNames];
  v10 = [v9 copy];
  [v4 setDerivedCounterNames:v10];

  v11 = [(DYGPUTimelineInfo *)self activeShadersPerPeriodicSample];
  v12 = [v11 copy];
  [v4 setActiveShadersPerPeriodicSample:v12];

  v13 = [(DYGPUTimelineInfo *)self numActiveShadersPerPeriodicSample];
  v14 = [v13 copy];
  [v4 setNumActiveShadersPerPeriodicSample:v14];

  v15 = [(DYGPUTimelineInfo *)self encoderTimelineInfos];
  v16 = [v15 copy];
  [v4 setEncoderTimelineInfos:v16];

  v17 = [(DYGPUTimelineInfo *)self metalFXTimelineInfo];
  v18 = [v17 copy];
  [v4 setMetalFXTimelineInfo:v18];

  return v4;
}

@end