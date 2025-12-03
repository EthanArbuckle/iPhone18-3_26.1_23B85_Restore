@interface ECXmlDump
+ (_xmlNode)xmlNodeForObject:(id)object;
+ (_xmlNode)xmlNodeWithName:(id)name forObject:(id)object;
@end

@implementation ECXmlDump

+ (_xmlNode)xmlNodeForObject:(id)object
{
  objectCopy = object;
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

  v10 = [self xmlNodeWithName:v7 forObject:objectCopy];

  return v10;
}

+ (_xmlNode)xmlNodeWithName:(id)name forObject:(id)object
{
  nameCopy = name;
  objectCopy = object;
  if (!nameCopy || ![(__CFString *)nameCopy length])
  {

    nameCopy = @"UnknownObject";
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([objectCopy isXmlNodeNeeded] & 1) == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = xmlNewNode(0, [(__CFString *)nameCopy tc_xmlString]);
    if (objc_opt_respondsToSelector())
    {
      [objectCopy addXmlProperties:v7];
    }

    else
    {
      sfaxmlSetBoolNoNsProp(v7, "xmlDumpingSupported", 0);
    }
  }

  return v7;
}

@end