@interface WFPythonHTMLAttribute
- (WFPythonHTMLAttribute)initWithName:(id)a3 value:(id)a4;
- (id)description;
@end

@implementation WFPythonHTMLAttribute

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = WFPythonHTMLAttribute;
  v4 = [(WFPythonHTMLAttribute *)&v9 description];
  v5 = [(WFPythonHTMLAttribute *)self name];
  v6 = [(WFPythonHTMLAttribute *)self value];
  v7 = [v3 stringWithFormat:@"%@: %@=%@", v4, v5, v6];

  return v7;
}

- (WFPythonHTMLAttribute)initWithName:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = WFPythonHTMLAttribute;
  v8 = [(WFPythonHTMLAttribute *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [v7 copy];
    value = v8->_value;
    v8->_value = v11;

    v13 = v8;
  }

  return v8;
}

@end