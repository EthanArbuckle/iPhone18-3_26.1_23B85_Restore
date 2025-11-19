@interface CMFrameUtils
+ (id)copyFramesetElement:(int)a3 isOnTop:(BOOL)a4;
+ (id)copyFramesetPageForDocument:(id)a3 navPage:(id)a4 firstPage:(id)a5 isOnTop:(BOOL)a6;
@end

@implementation CMFrameUtils

+ (id)copyFramesetPageForDocument:(id)a3 navPage:(id)a4 firstPage:(id)a5 isOnTop:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a5;
  [v9 pageSizeForDevice];
  v12 = v11;
  v13 = +[CMXmlUtils copyXhtmlDocument];
  v14 = [v9 documentTitle];
  v15 = [CMXmlUtils copyHeadElementWithTitle:v14 deviceWidth:v12];

  v16 = [v13 rootElement];
  [v16 addChild:v15];

  v17 = [a1 copyFramesetElement:18 isOnTop:v6];
  v18 = [v13 rootElement];
  [v18 addChild:v17];

  v19 = [[OIXMLElement alloc] initWithType:4 stringValue:0];
  v20 = [OIXMLAttribute attributeWithName:@"src" stringValue:v10];
  [(OIXMLElement *)v19 addAttribute:v20];

  v21 = [OIXMLAttribute attributeWithName:@"name" stringValue:@"content"];
  [(OIXMLElement *)v19 addAttribute:v21];

  v22 = [OIXMLAttribute attributeWithName:@"marginwidth" stringValue:@"0"];
  [(OIXMLElement *)v19 addAttribute:v22];

  v23 = [OIXMLAttribute attributeWithName:@"marginheight" stringValue:@"0"];
  [(OIXMLElement *)v19 addAttribute:v23];

  v24 = [[OIXMLElement alloc] initWithType:4 stringValue:0];
  v25 = [OIXMLAttribute attributeWithName:@"src" stringValue:v10];
  [(OIXMLElement *)v24 addAttribute:v25];

  v26 = [OIXMLAttribute attributeWithName:@"name" stringValue:@"content"];
  [(OIXMLElement *)v24 addAttribute:v26];

  v27 = [OIXMLAttribute attributeWithName:@"marginwidth" stringValue:@"0"];
  [(OIXMLElement *)v24 addAttribute:v27];

  v28 = [OIXMLAttribute attributeWithName:@"marginheight" stringValue:@"0"];
  [(OIXMLElement *)v24 addAttribute:v28];

  if (v6)
  {
    [v17 addChild:v24];
    v29 = v19;
  }

  else
  {
    [v17 addChild:v19];
    v29 = v24;
  }

  [v17 addChild:v29];

  return v13;
}

+ (id)copyFramesetElement:(int)a3 isOnTop:(BOOL)a4
{
  v4 = @"*,%d";
  if (a4)
  {
    v4 = @"%d,*";
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:v4, *&a3];
  v6 = [[OIXMLElement alloc] initWithType:5 stringValue:0];
  v7 = [OIXMLAttribute attributeWithName:@"rows" stringValue:v5];
  [(OIXMLElement *)v6 addAttribute:v7];

  v8 = [OIXMLAttribute attributeWithName:@"width" stringValue:@"0"];
  [(OIXMLElement *)v6 addAttribute:v8];

  v9 = [OIXMLAttribute attributeWithName:@"frameborder" stringValue:@"no"];
  [(OIXMLElement *)v6 addAttribute:v9];

  v10 = [OIXMLAttribute attributeWithName:@"framespacing" stringValue:@"0"];
  [(OIXMLElement *)v6 addAttribute:v10];

  return v6;
}

@end