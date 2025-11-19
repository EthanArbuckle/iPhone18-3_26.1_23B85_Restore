@interface OrgXmlSaxHelpersParserAdapter_AttributeListAdapter
- (id)getTypeWithNSString:(id)a3;
- (id)getValueWithNSString:(id)a3;
- (int)getIndexWithNSString:(id)a3;
- (int)getLength;
- (void)__javaClone;
- (void)dealloc;
@end

@implementation OrgXmlSaxHelpersParserAdapter_AttributeListAdapter

- (int)getLength
{
  qAtts = self->qAtts_;
  if (!qAtts)
  {
    JreThrowNullPointerException();
  }

  return [(OrgXmlSaxAttributeList *)qAtts getLength];
}

- (int)getIndexWithNSString:(id)a3
{
  v5 = *(objc_loadWeak(&self->this$0_) + 11);
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [v5 getLength];
  if (v6 >= 1)
  {
    v7 = v6;
    v8 = 0;
    while (1)
    {
      qAtts = self->qAtts_;
      if (!qAtts)
      {
        break;
      }

      v10 = [(OrgXmlSaxAttributeList *)qAtts getNameWithInt:v8];
      if (!v10)
      {
        break;
      }

      if ([v10 isEqual:a3])
      {
        return v8;
      }

      v8 = (v8 + 1);
      if (v7 == v8)
      {
        goto LABEL_8;
      }
    }

LABEL_10:
    JreThrowNullPointerException();
  }

LABEL_8:
  LODWORD(v8) = -1;
  return v8;
}

- (id)getTypeWithNSString:(id)a3
{
  qAtts = self->qAtts_;
  if (!qAtts || (v4 = [(OrgXmlSaxAttributeList *)qAtts getTypeWithNSString:a3]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v4 intern];
}

- (id)getValueWithNSString:(id)a3
{
  qAtts = self->qAtts_;
  if (!qAtts)
  {
    JreThrowNullPointerException();
  }

  return [(OrgXmlSaxAttributeList *)qAtts getValueWithNSString:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgXmlSaxHelpersParserAdapter_AttributeListAdapter;
  [(OrgXmlSaxHelpersParserAdapter_AttributeListAdapter *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = OrgXmlSaxHelpersParserAdapter_AttributeListAdapter;
  [(OrgXmlSaxHelpersParserAdapter_AttributeListAdapter *)&v3 __javaClone];
}

@end