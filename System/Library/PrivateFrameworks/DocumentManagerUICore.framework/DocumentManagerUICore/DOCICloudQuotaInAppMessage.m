@interface DOCICloudQuotaInAppMessage
- (DOCICloudQuotaInAppMessage)initWithContentType:(unint64_t)a3 title:(id)a4 subTitle:(id)a5 icon:(id)a6 actions:(id)a7;
- (DOCICloudQuotaInAppMessage)initWithICQInAppMessage:(id)a3;
- (id)contentTypeDescription;
- (unint64_t)contentTypeWithMessage:(id)a3;
@end

@implementation DOCICloudQuotaInAppMessage

- (DOCICloudQuotaInAppMessage)initWithICQInAppMessage:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = DOCICloudQuotaInAppMessage;
  v5 = [(DOCICloudQuotaInAppMessage *)&v23 init];
  v5->_contentType = [(DOCICloudQuotaInAppMessage *)v5 contentTypeWithMessage:v4];
  v6 = [v4 title];
  title = v5->_title;
  v5->_title = v6;

  v8 = [v4 subTitle];
  subTitle = v5->_subTitle;
  v5->_subTitle = v8;

  v10 = [v4 sfSymbolName];
  if (v10)
  {
    v11 = MEMORY[0x277D755B8];
    v12 = [v4 sfSymbolName];
    v13 = [v11 systemImageNamed:v12];
    icon = v5->_icon;
    v5->_icon = v13;
  }

  else
  {
    v12 = v5->_icon;
    v5->_icon = 0;
  }

  v15 = [MEMORY[0x277CBEB18] array];
  v16 = [v4 actions];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __54__DOCICloudQuotaInAppMessage_initWithICQInAppMessage___block_invoke;
  v21[3] = &unk_278FB3AB0;
  v17 = v15;
  v22 = v17;
  [v16 enumerateObjectsUsingBlock:v21];

  actions = v5->_actions;
  v5->_actions = v17;
  v19 = v17;

  return v5;
}

void __54__DOCICloudQuotaInAppMessage_initWithICQInAppMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[DOCICloudQuotaInAppAction alloc] initWithICQInAppAction:v3];

  [*(a1 + 32) addObject:v4];
}

- (DOCICloudQuotaInAppMessage)initWithContentType:(unint64_t)a3 title:(id)a4 subTitle:(id)a5 icon:(id)a6 actions:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v25.receiver = self;
  v25.super_class = DOCICloudQuotaInAppMessage;
  v16 = [(DOCICloudQuotaInAppMessage *)&v25 init];
  title = v16->_title;
  v16->_contentType = a3;
  v16->_title = v12;
  v18 = v12;

  subTitle = v16->_subTitle;
  v16->_subTitle = v13;
  v20 = v13;

  icon = v16->_icon;
  v16->_icon = v14;
  v22 = v14;

  actions = v16->_actions;
  v16->_actions = v15;

  return v16;
}

- (unint64_t)contentTypeWithMessage:(id)a3
{
  v3 = [a3 contentType];
  if (v3 > 4)
  {
    return 0;
  }

  else
  {
    return qword_249D072D0[v3];
  }
}

- (id)contentTypeDescription
{
  v2 = [(DOCICloudQuotaInAppMessage *)self contentType];
  if (v2 > 3)
  {
    return @"Error";
  }

  else
  {
    return off_278FB3AD0[v2];
  }
}

@end