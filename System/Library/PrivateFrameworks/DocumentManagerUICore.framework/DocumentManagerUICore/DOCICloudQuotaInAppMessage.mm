@interface DOCICloudQuotaInAppMessage
- (DOCICloudQuotaInAppMessage)initWithContentType:(unint64_t)type title:(id)title subTitle:(id)subTitle icon:(id)icon actions:(id)actions;
- (DOCICloudQuotaInAppMessage)initWithICQInAppMessage:(id)message;
- (id)contentTypeDescription;
- (unint64_t)contentTypeWithMessage:(id)message;
@end

@implementation DOCICloudQuotaInAppMessage

- (DOCICloudQuotaInAppMessage)initWithICQInAppMessage:(id)message
{
  messageCopy = message;
  v23.receiver = self;
  v23.super_class = DOCICloudQuotaInAppMessage;
  v5 = [(DOCICloudQuotaInAppMessage *)&v23 init];
  v5->_contentType = [(DOCICloudQuotaInAppMessage *)v5 contentTypeWithMessage:messageCopy];
  title = [messageCopy title];
  title = v5->_title;
  v5->_title = title;

  subTitle = [messageCopy subTitle];
  subTitle = v5->_subTitle;
  v5->_subTitle = subTitle;

  sfSymbolName = [messageCopy sfSymbolName];
  if (sfSymbolName)
  {
    v11 = MEMORY[0x277D755B8];
    sfSymbolName2 = [messageCopy sfSymbolName];
    v13 = [v11 systemImageNamed:sfSymbolName2];
    icon = v5->_icon;
    v5->_icon = v13;
  }

  else
  {
    sfSymbolName2 = v5->_icon;
    v5->_icon = 0;
  }

  array = [MEMORY[0x277CBEB18] array];
  actions = [messageCopy actions];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __54__DOCICloudQuotaInAppMessage_initWithICQInAppMessage___block_invoke;
  v21[3] = &unk_278FB3AB0;
  v17 = array;
  v22 = v17;
  [actions enumerateObjectsUsingBlock:v21];

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

- (DOCICloudQuotaInAppMessage)initWithContentType:(unint64_t)type title:(id)title subTitle:(id)subTitle icon:(id)icon actions:(id)actions
{
  titleCopy = title;
  subTitleCopy = subTitle;
  iconCopy = icon;
  actionsCopy = actions;
  v25.receiver = self;
  v25.super_class = DOCICloudQuotaInAppMessage;
  v16 = [(DOCICloudQuotaInAppMessage *)&v25 init];
  title = v16->_title;
  v16->_contentType = type;
  v16->_title = titleCopy;
  v18 = titleCopy;

  subTitle = v16->_subTitle;
  v16->_subTitle = subTitleCopy;
  v20 = subTitleCopy;

  icon = v16->_icon;
  v16->_icon = iconCopy;
  v22 = iconCopy;

  actions = v16->_actions;
  v16->_actions = actionsCopy;

  return v16;
}

- (unint64_t)contentTypeWithMessage:(id)message
{
  contentType = [message contentType];
  if (contentType > 4)
  {
    return 0;
  }

  else
  {
    return qword_249D072D0[contentType];
  }
}

- (id)contentTypeDescription
{
  contentType = [(DOCICloudQuotaInAppMessage *)self contentType];
  if (contentType > 3)
  {
    return @"Error";
  }

  else
  {
    return off_278FB3AD0[contentType];
  }
}

@end