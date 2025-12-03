@interface FBSCoreSettingsExtension
+ (id)settings:(id)settings valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
@end

@implementation FBSCoreSettingsExtension

+ (id)settings:(id)settings valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  settingsCopy = settings;
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    descriptionProvider = [objectCopy descriptionProvider];

    if (!descriptionProvider)
    {
      v13 = [settingsCopy keyForSetting:setting];
      v14 = v13;
      if (v13)
      {
        v15 = NSClassFromString(v13);
        if (v15)
        {
          v16 = v15;
          if ([(objc_class *)v15 isSubclassOfClass:objc_opt_class()])
          {
            [objectCopy setDescriptionProvider:v16];
          }
        }
      }
    }
  }

  v19.receiver = self;
  v19.super_class = &OBJC_METACLASS___FBSCoreSettingsExtension;
  v17 = objc_msgSendSuper2(&v19, sel_settings_valueDescriptionForFlag_object_ofSetting_, settingsCopy, flag, objectCopy, setting);

  return v17;
}

@end