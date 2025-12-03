@interface WFGeneratedResponse
- (WFGeneratedResponse)initWithCoder:(id)coder;
- (WFGeneratedResponse)initWithRawResponse:(id)response list:(id)list BOOLeanValue:(id)value numberValue:(id)numberValue dictionary:(id)dictionary date:(id)date responseDataModel:(id)model;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFGeneratedResponse

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  rawResponse = [(WFGeneratedResponse *)self rawResponse];
  [coderCopy encodeObject:rawResponse forKey:@"rawResponse"];

  bOOLeanValue = [(WFGeneratedResponse *)self BOOLeanValue];
  [coderCopy encodeObject:bOOLeanValue forKey:@"BOOLeanValue"];

  numberValue = [(WFGeneratedResponse *)self numberValue];
  [coderCopy encodeObject:numberValue forKey:@"numberValue"];

  dictionary = [(WFGeneratedResponse *)self dictionary];
  [coderCopy encodeObject:dictionary forKey:@"dictionary"];

  responseDataModel = [(WFGeneratedResponse *)self responseDataModel];
  [coderCopy encodeObject:responseDataModel forKey:@"responseDataModel"];

  date = [(WFGeneratedResponse *)self date];
  [coderCopy encodeObject:date forKey:@"date"];

  list = [(WFGeneratedResponse *)self list];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __39__WFGeneratedResponse_encodeWithCoder___block_invoke;
  v14[3] = &unk_27834A5F0;
  v15 = coderCopy;
  v12 = coderCopy;
  v13 = [list if_objectsPassingTest:v14];

  [v12 encodeObject:v13 forKey:@"list"];
}

- (WFGeneratedResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(WFGeneratedResponse *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawResponse"];
    rawResponse = v5->_rawResponse;
    v5->_rawResponse = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"list"];
    list = v5->_list;
    v5->_list = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BOOLeanValue"];
    BOOLeanValue = v5->_BOOLeanValue;
    v5->_BOOLeanValue = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberValue"];
    numberValue = v5->_numberValue;
    v5->_numberValue = v16;

    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = [v18 setWithObjects:{v19, v20, v21, v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"dictionary"];
    dictionary = v5->_dictionary;
    v5->_dictionary = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"responseDataModel"];
    responseDataModel = v5->_responseDataModel;
    v5->_responseDataModel = v28;

    v30 = v5;
  }

  return v5;
}

- (WFGeneratedResponse)initWithRawResponse:(id)response list:(id)list BOOLeanValue:(id)value numberValue:(id)numberValue dictionary:(id)dictionary date:(id)date responseDataModel:(id)model
{
  responseCopy = response;
  listCopy = list;
  valueCopy = value;
  numberValueCopy = numberValue;
  dictionaryCopy = dictionary;
  dateCopy = date;
  modelCopy = model;
  v27.receiver = self;
  v27.super_class = WFGeneratedResponse;
  v18 = [(WFGeneratedResponse *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_rawResponse, response);
    objc_storeStrong(&v19->_list, list);
    objc_storeStrong(&v19->_BOOLeanValue, value);
    objc_storeStrong(&v19->_numberValue, numberValue);
    objc_storeStrong(&v19->_dictionary, dictionary);
    objc_storeStrong(&v19->_date, date);
    objc_storeStrong(&v19->_responseDataModel, model);
    v20 = v19;
  }

  return v19;
}

@end