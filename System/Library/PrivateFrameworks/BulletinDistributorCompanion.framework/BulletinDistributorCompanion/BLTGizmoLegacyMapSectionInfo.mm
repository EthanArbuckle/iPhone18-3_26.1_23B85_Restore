@interface BLTGizmoLegacyMapSectionInfo
- (BLTGizmoLegacyMapSectionInfo)initWithNotificationMap:(id)a3;
@end

@implementation BLTGizmoLegacyMapSectionInfo

- (BLTGizmoLegacyMapSectionInfo)initWithNotificationMap:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEB98];
  v6 = [v4 allKeys];
  v7 = [v5 setWithArray:v6];
  if (BLTGizmoLegacyMapSectionInfoKeySet_onceToken != -1)
  {
    [BLTGizmoLegacyMapSectionInfo initWithNotificationMap:];
  }

  v8 = [v7 intersectsSet:BLTGizmoLegacyMapSectionInfoKeySet___BLTGizmoLegacyMapSectionInfoKeySet];

  if (v8)
  {
    v13.receiver = self;
    v13.super_class = BLTGizmoLegacyMapSectionInfo;
    v9 = [(BLTGizmoLegacyMapSectionInfo *)&v13 init];
    if (v9)
    {
      v10 = [v4 copy];
      notificationMap = v9->_notificationMap;
      v9->_notificationMap = v10;
    }
  }

  else
  {

    v9 = 0;
  }

  return v9;
}

@end