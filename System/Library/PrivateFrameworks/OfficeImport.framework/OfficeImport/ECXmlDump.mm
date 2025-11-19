@interface ECXmlDump
+ (_xmlNode)xmlNodeForObject:(id)a3;
+ (_xmlNode)xmlNodeWithName:(id)a3 forObject:(id)a4;
@end

@implementation ECXmlDump

+ (_xmlNode)xmlNodeForObject:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = v6;
  if (v6)
  {
    if (![v6 compare:@"ED" options:2 range:{0, 2}])
    {
      v8 = 2;
      goto LABEL_6;
    }

    if (![v7 compare:@"CHD" options:2 range:{0, 3}])
    {
      v8 = 3;
LABEL_6:
      v9 = [v7 substringFromIndex:v8];

      v7 = v9;
    }
  }

  v10 = [a1 xmlNodeWithName:v7 forObject:v4];

  return v10;
}

+ (_xmlNode)xmlNodeWithName:(id)a3 forObject:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5 || ![(__CFString *)v5 length])
  {

    v5 = @"UnknownObject";
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v6 isXmlNodeNeeded] & 1) == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = xmlNewNode(0, [(__CFString *)v5 tc_xmlString]);
    if (objc_opt_respondsToSelector())
    {
      [v6 addXmlProperties:v7];
    }

    else
    {
      sfaxmlSetBoolNoNsProp(v7, "xmlDumpingSupported", 0);
    }
  }

  return v7;
}

@end