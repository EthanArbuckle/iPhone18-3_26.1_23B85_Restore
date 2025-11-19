@interface WFGeneratedResponse
- (WFGeneratedResponse)initWithCoder:(id)a3;
- (WFGeneratedResponse)initWithRawResponse:(id)a3 list:(id)a4 BOOLeanValue:(id)a5 numberValue:(id)a6 dictionary:(id)a7 date:(id)a8 responseDataModel:(id)a9;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFGeneratedResponse

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFGeneratedResponse *)self rawResponse];
  [v4 encodeObject:v5 forKey:@"rawResponse"];

  v6 = [(WFGeneratedResponse *)self BOOLeanValue];
  [v4 encodeObject:v6 forKey:@"BOOLeanValue"];

  v7 = [(WFGeneratedResponse *)self numberValue];
  [v4 encodeObject:v7 forKey:@"numberValue"];

  v8 = [(WFGeneratedResponse *)self dictionary];
  [v4 encodeObject:v8 forKey:@"dictionary"];

  v9 = [(WFGeneratedResponse *)self responseDataModel];
  [v4 encodeObject:v9 forKey:@"responseDataModel"];

  v10 = [(WFGeneratedResponse *)self date];
  [v4 encodeObject:v10 forKey:@"date"];

  v11 = [(WFGeneratedResponse *)self list];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __39__WFGeneratedResponse_encodeWithCoder___block_invoke;
  v14[3] = &unk_27834A5F0;
  v15 = v4;
  v12 = v4;
  v13 = [v11 if_objectsPassingTest:v14];

  [v12 encodeObject:v13 forKey:@"list"];
}

- (WFGeneratedResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFGeneratedResponse *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawResponse"];
    rawResponse = v5->_rawResponse;
    v5->_rawResponse = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"list"];
    list = v5->_list;
    v5->_list = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BOOLeanValue"];
    BOOLeanValue = v5->_BOOLeanValue;
    v5->_BOOLeanValue = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numberValue"];
    numberValue = v5->_numberValue;
    v5->_numberValue = v16;

    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = [v18 setWithObjects:{v19, v20, v21, v22, objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"dictionary"];
    dictionary = v5->_dictionary;
    v5->_dictionary = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"responseDataModel"];
    responseDataModel = v5->_responseDataModel;
    v5->_responseDataModel = v28;

    v30 = v5;
  }

  return v5;
}

- (WFGeneratedResponse)initWithRawResponse:(id)a3 list:(id)a4 BOOLeanValue:(id)a5 numberValue:(id)a6 dictionary:(id)a7 date:(id)a8 responseDataModel:(id)a9
{
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v23 = a6;
  v22 = a7;
  v16 = a8;
  v17 = a9;
  v27.receiver = self;
  v27.super_class = WFGeneratedResponse;
  v18 = [(WFGeneratedResponse *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_rawResponse, a3);
    objc_storeStrong(&v19->_list, a4);
    objc_storeStrong(&v19->_BOOLeanValue, a5);
    objc_storeStrong(&v19->_numberValue, a6);
    objc_storeStrong(&v19->_dictionary, a7);
    objc_storeStrong(&v19->_date, a8);
    objc_storeStrong(&v19->_responseDataModel, a9);
    v20 = v19;
  }

  return v19;
}

@end