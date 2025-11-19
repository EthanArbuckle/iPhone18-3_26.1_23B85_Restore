@interface NTKWidgetComplicationInfo
- (NTKWidgetComplicationInfo)initWithAppName:(id)a3 displayName:(id)a4;
- (id)_init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NTKWidgetComplicationInfo

- (id)_init
{
  v3.receiver = self;
  v3.super_class = NTKWidgetComplicationInfo;
  return [(NTKWidgetComplicationInfo *)&v3 init];
}

- (NTKWidgetComplicationInfo)initWithAppName:(id)a3 displayName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = NTKWidgetComplicationInfo;
  v8 = [(NTKWidgetComplicationInfo *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    localizedAppName = v8->_localizedAppName;
    v8->_localizedAppName = v9;

    v11 = [v7 copy];
    localizedDisplayName = v8->_localizedDisplayName;
    v8->_localizedDisplayName = v11;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NTKWidgetComplicationInfo alloc] _init];
  objc_storeStrong(v4 + 2, self->_localizedAppName);
  objc_storeStrong(v4 + 1, self->_localizedDisplayName);
  return v4;
}

@end