@interface WFPythonHTMLAttribute
- (WFPythonHTMLAttribute)initWithName:(id)name value:(id)value;
- (id)description;
@end

@implementation WFPythonHTMLAttribute

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = WFPythonHTMLAttribute;
  v4 = [(WFPythonHTMLAttribute *)&v9 description];
  name = [(WFPythonHTMLAttribute *)self name];
  value = [(WFPythonHTMLAttribute *)self value];
  v7 = [v3 stringWithFormat:@"%@: %@=%@", v4, name, value];

  return v7;
}

- (WFPythonHTMLAttribute)initWithName:(id)name value:(id)value
{
  nameCopy = name;
  valueCopy = value;
  v15.receiver = self;
  v15.super_class = WFPythonHTMLAttribute;
  v8 = [(WFPythonHTMLAttribute *)&v15 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [valueCopy copy];
    value = v8->_value;
    v8->_value = v11;

    v13 = v8;
  }

  return v8;
}

@end