@interface CPLContainerRelationChange
+ (id)ckValueForRelatedRecord:(id)a3;
- (void)fillCKRecordBuilder:(id)a3 scopeProvider:(id)a4;
- (void)fillWithCKRecord:(id)a3;
@end

@implementation CPLContainerRelationChange

+ (id)ckValueForRelatedRecord:(id)a3
{
  v3 = [a3 recordID];
  v4 = [v3 recordName];

  return v4;
}

- (void)fillWithCKRecord:(id)a3
{
  v4 = self;
  v5 = a3;
  v6 = [v5 objectForKey:@"itemId"];
  [(CPLContainerRelationChange *)v4 setItemIdentifier:v6];

  v11 = objc_alloc_init(CPLContainerRelation);
  v7 = [v5 cpl_objectForKey:@"position" validateClass:objc_opt_class()];
  v8 = v7;
  if (!v7)
  {
    v7 = &off_10028EE18;
  }

  [v11 setPosition:{objc_msgSend(v7, "integerValue")}];

  v9 = [v5 objectForKeyedSubscript:@"containerId"];
  [v11 setContainerIdentifier:v9];

  v10 = [v5 cpl_objectForKey:@"isKeyAsset" validateClass:objc_opt_class()];

  [v11 setKeyAsset:{objc_msgSend(v10, "BOOLValue")}];
  [(CPLContainerRelationChange *)v4 setRelation:v11];
}

- (void)fillCKRecordBuilder:(id)a3 scopeProvider:(id)a4
{
  v15 = a3;
  v6 = self;
  v7 = [a4 fingerprintContext];
  if ([(CPLContainerRelationChange *)v6 hasChangeType:2])
  {
    if ([(CPLContainerRelationChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"itemIdentifier")])
    {
      v8 = [(CPLContainerRelationChange *)v6 itemIdentifier];
      [v15 setObject:v8 forKey:@"itemId"];
    }

    if ([(CPLContainerRelationChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"relation")])
    {
      v9 = [(CPLContainerRelationChange *)v6 relation];
      v10 = [v9 containerIdentifier];
      [v15 setObject:v10 forKey:@"containerId"];

      v11 = [(CPLContainerRelationChange *)v6 relation];
      v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v11 position]);
      [v15 setObject:v12 forKey:@"position"];

      v13 = [(CPLContainerRelationChange *)v6 relation];
      v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v13 isKeyAsset]);
      [v15 setObject:v14 forKey:@"isKeyAsset"];
    }
  }
}

@end