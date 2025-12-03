@interface WXRubyRun
+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state;
@end

@implementation WXRubyRun

+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  for (i = OCXFirstChild(from); i; i = OCXNextSibling(i))
  {
    if (xmlStrEqual(i->name, "rubyPr"))
    {
      rubyProperties = [toCopy rubyProperties];
      [WXRubyProperties readFrom:i to:rubyProperties state:stateCopy];
    }

    else if (xmlStrEqual(i->name, "rt"))
    {
      ns = i->ns;
      rubyProperties = [toCopy paragraph];
      phoneticRun = [toCopy phoneticRun];
      [WXParagraph readRunsFrom:i paragraphNamespace:ns to:rubyProperties targetRun:phoneticRun state:stateCopy];
    }

    else
    {
      if (!xmlStrEqual(i->name, "rubyBase"))
      {
        continue;
      }

      v12 = i->ns;
      rubyProperties = [toCopy paragraph];
      [WXParagraph readRunsFrom:i paragraphNamespace:v12 to:rubyProperties targetRun:toCopy state:stateCopy];
    }
  }
}

@end