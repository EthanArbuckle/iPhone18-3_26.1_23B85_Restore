@interface NTKWidgetComplicationInfo
- (NTKWidgetComplicationInfo)initWithAppName:(id)name displayName:(id)displayName;
- (id)_init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NTKWidgetComplicationInfo

- (id)_init
{
  v3.receiver = self;
  v3.super_class = NTKWidgetComplicationInfo;
  return [(NTKWidgetComplicationInfo *)&v3 init];
}

- (NTKWidgetComplicationInfo)initWithAppName:(id)name displayName:(id)displayName
{
  nameCopy = name;
  displayNameCopy = displayName;
  v14.receiver = self;
  v14.super_class = NTKWidgetComplicationInfo;
  v8 = [(NTKWidgetComplicationInfo *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    localizedAppName = v8->_localizedAppName;
    v8->_localizedAppName = v9;

    v11 = [displayNameCopy copy];
    localizedDisplayName = v8->_localizedDisplayName;
    v8->_localizedDisplayName = v11;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  _init = [[NTKWidgetComplicationInfo alloc] _init];
  objc_storeStrong(_init + 2, self->_localizedAppName);
  objc_storeStrong(_init + 1, self->_localizedDisplayName);
  return _init;
}

@end