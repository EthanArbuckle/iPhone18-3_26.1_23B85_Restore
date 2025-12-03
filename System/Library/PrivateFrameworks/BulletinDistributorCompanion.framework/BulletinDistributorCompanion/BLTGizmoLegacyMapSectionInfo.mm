@interface BLTGizmoLegacyMapSectionInfo
- (BLTGizmoLegacyMapSectionInfo)initWithNotificationMap:(id)map;
@end

@implementation BLTGizmoLegacyMapSectionInfo

- (BLTGizmoLegacyMapSectionInfo)initWithNotificationMap:(id)map
{
  mapCopy = map;
  v5 = MEMORY[0x277CBEB98];
  allKeys = [mapCopy allKeys];
  v7 = [v5 setWithArray:allKeys];
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
      v10 = [mapCopy copy];
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