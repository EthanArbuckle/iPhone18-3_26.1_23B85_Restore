@interface CPLContainerRelationChange
+ (id)ckValueForRelatedRecord:(id)record;
- (void)fillCKRecordBuilder:(id)builder scopeProvider:(id)provider;
- (void)fillWithCKRecord:(id)record;
@end

@implementation CPLContainerRelationChange

+ (id)ckValueForRelatedRecord:(id)record
{
  recordID = [record recordID];
  recordName = [recordID recordName];

  return recordName;
}

- (void)fillWithCKRecord:(id)record
{
  selfCopy = self;
  recordCopy = record;
  v6 = [recordCopy objectForKey:@"itemId"];
  [(CPLContainerRelationChange *)selfCopy setItemIdentifier:v6];

  v11 = objc_alloc_init(CPLContainerRelation);
  v7 = [recordCopy cpl_objectForKey:@"position" validateClass:objc_opt_class()];
  v8 = v7;
  if (!v7)
  {
    v7 = &off_10028EE18;
  }

  [v11 setPosition:{objc_msgSend(v7, "integerValue")}];

  v9 = [recordCopy objectForKeyedSubscript:@"containerId"];
  [v11 setContainerIdentifier:v9];

  v10 = [recordCopy cpl_objectForKey:@"isKeyAsset" validateClass:objc_opt_class()];

  [v11 setKeyAsset:{objc_msgSend(v10, "BOOLValue")}];
  [(CPLContainerRelationChange *)selfCopy setRelation:v11];
}

- (void)fillCKRecordBuilder:(id)builder scopeProvider:(id)provider
{
  builderCopy = builder;
  selfCopy = self;
  fingerprintContext = [provider fingerprintContext];
  if ([(CPLContainerRelationChange *)selfCopy hasChangeType:2])
  {
    if ([(CPLContainerRelationChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"itemIdentifier")])
    {
      itemIdentifier = [(CPLContainerRelationChange *)selfCopy itemIdentifier];
      [builderCopy setObject:itemIdentifier forKey:@"itemId"];
    }

    if ([(CPLContainerRelationChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"relation")])
    {
      relation = [(CPLContainerRelationChange *)selfCopy relation];
      containerIdentifier = [relation containerIdentifier];
      [builderCopy setObject:containerIdentifier forKey:@"containerId"];

      relation2 = [(CPLContainerRelationChange *)selfCopy relation];
      v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [relation2 position]);
      [builderCopy setObject:v12 forKey:@"position"];

      relation3 = [(CPLContainerRelationChange *)selfCopy relation];
      v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [relation3 isKeyAsset]);
      [builderCopy setObject:v14 forKey:@"isKeyAsset"];
    }
  }
}

@end