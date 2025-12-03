@interface BDWorkoutPreviewMetadata
+ (void)getPreviewMetadata:(id)metadata withCompletion:(id)completion;
- (BDWorkoutPreviewMetadata)initWithActivityType:(unint64_t)type isIndoor:(BOOL)indoor configurationType:(int64_t)configurationType configurationName:(id)name goalTypeIdentifier:(unint64_t)identifier;
@end

@implementation BDWorkoutPreviewMetadata

- (BDWorkoutPreviewMetadata)initWithActivityType:(unint64_t)type isIndoor:(BOOL)indoor configurationType:(int64_t)configurationType configurationName:(id)name goalTypeIdentifier:(unint64_t)identifier
{
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = BDWorkoutPreviewMetadata;
  v14 = [(BDWorkoutPreviewMetadata *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_isIndoor = indoor;
    v14->_activityType = type;
    v14->_configurationType = configurationType;
    objc_storeStrong(&v14->_configurationName, name);
    v15->_goalTypeIdentifier = identifier;
  }

  return v15;
}

+ (void)getPreviewMetadata:(id)metadata withCompletion:(id)completion
{
  metadataCopy = metadata;
  completionCopy = completion;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v7 = qword_1000FE0B0;
  v20 = qword_1000FE0B0;
  if (!qword_1000FE0B0)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100007B28;
    v16[3] = &unk_1000F0B70;
    v16[4] = &v17;
    sub_100007B28(v16);
    v7 = v18[3];
  }

  v8 = v7;
  _Block_object_dispose(&v17, 8);
  v9 = [v7 dataFromSourceFromData:metadataCopy];
  if (v9)
  {
    v10 = [BDWorkoutPreviewMetadata alloc];
    activityType = [v9 activityType];
    isIndoor = [v9 isIndoor];
    configurationType = [v9 configurationType];
    configurationName = [v9 configurationName];
    v15 = -[BDWorkoutPreviewMetadata initWithActivityType:isIndoor:configurationType:configurationName:goalTypeIdentifier:](v10, "initWithActivityType:isIndoor:configurationType:configurationName:goalTypeIdentifier:", activityType, isIndoor, configurationType, configurationName, [v9 goalTypeIdentifier]);

    completionCopy[2](completionCopy, v15);
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

@end