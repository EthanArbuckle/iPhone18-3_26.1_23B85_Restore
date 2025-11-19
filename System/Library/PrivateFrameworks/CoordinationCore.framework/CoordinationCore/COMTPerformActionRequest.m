@interface COMTPerformActionRequest
- (COMTPerformActionRequest)initWithActions:(id)a3;
- (COMTPerformActionRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COMTPerformActionRequest

- (COMTPerformActionRequest)initWithActions:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = COMTPerformActionRequest;
  v5 = [(COMessageChannelRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    actions = v5->_actions;
    v5->_actions = v6;
  }

  return v5;
}

- (COMTPerformActionRequest)initWithCoder:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = COMTPerformActionRequest;
  v5 = [(COMessageChannelRequest *)&v25 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"PA"];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * v14);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v18 = 0;
            goto LABEL_13;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v16 = [v10 copy];
    actions = v5->_actions;
    v5->_actions = v16;
  }

  v18 = v5;
LABEL_13:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = COMTPerformActionRequest;
  v4 = a3;
  [(COMessageChannelRequest *)&v6 encodeWithCoder:v4];
  v5 = [(COMTPerformActionRequest *)self actions:v6.receiver];
  [v4 encodeObject:v5 forKey:@"PA"];
}

@end