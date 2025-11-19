@interface IMDWhitetailToCoralDowngradeHelper
- (IMDWhitetailToCoralDowngradeHelper)initWithPath:(id)a3;
@end

@implementation IMDWhitetailToCoralDowngradeHelper

- (IMDWhitetailToCoralDowngradeHelper)initWithPath:(id)a3
{
  v5 = objc_msgSend_arrayOfTableNames(IMDWhitetailToCoralDowngradeHelper, a2, a3);
  TablesSQL = objc_msgSend_arrayOfCreateTablesSQL(IMDWhitetailToCoralDowngradeHelper, v6, v7);
  IndexesSQL = objc_msgSend_arrayOfCreateIndexesSQL(IMDWhitetailToCoralDowngradeHelper, v9, v10);
  TriggersSQL = objc_msgSend_arrayOfCreateTriggersSQL(IMDWhitetailToCoralDowngradeHelper, v12, v13);
  v16.receiver = self;
  v16.super_class = IMDWhitetailToCoralDowngradeHelper;
  return [(IMDDatabaseDowngradeHelper *)&v16 initWithPath:a3 tableNames:v5 createTablesSQL:TablesSQL createIndexesSQL:IndexesSQL createTriggersSQL:TriggersSQL downgradesToVersion:9006];
}

@end