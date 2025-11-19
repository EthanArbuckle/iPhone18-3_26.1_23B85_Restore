@interface WXRubyRun
+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5;
@end

@implementation WXRubyRun

+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5
{
  v13 = a4;
  v7 = a5;
  for (i = OCXFirstChild(a3); i; i = OCXNextSibling(i))
  {
    if (xmlStrEqual(i->name, "rubyPr"))
    {
      v9 = [v13 rubyProperties];
      [WXRubyProperties readFrom:i to:v9 state:v7];
    }

    else if (xmlStrEqual(i->name, "rt"))
    {
      ns = i->ns;
      v9 = [v13 paragraph];
      v11 = [v13 phoneticRun];
      [WXParagraph readRunsFrom:i paragraphNamespace:ns to:v9 targetRun:v11 state:v7];
    }

    else
    {
      if (!xmlStrEqual(i->name, "rubyBase"))
      {
        continue;
      }

      v12 = i->ns;
      v9 = [v13 paragraph];
      [WXParagraph readRunsFrom:i paragraphNamespace:v12 to:v9 targetRun:v13 state:v7];
    }
  }
}

@end