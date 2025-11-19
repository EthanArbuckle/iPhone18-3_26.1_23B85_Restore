@interface MBDHTMLToSuper_Default_Frame
- (void)parser:(id)a3 context:(id)a4 foundCharacters:(id)a5;
@end

@implementation MBDHTMLToSuper_Default_Frame

- (void)parser:(id)a3 context:(id)a4 foundCharacters:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[NSCharacterSet newlineCharacterSet];
  v12 = [v8 stringByRemovingCharactersFromSet:v11];

  v13.receiver = self;
  v13.super_class = MBDHTMLToSuper_Default_Frame;
  [(MBDToSuperParserFrame *)&v13 parser:v10 context:v9 foundCharacters:v12];
}

@end