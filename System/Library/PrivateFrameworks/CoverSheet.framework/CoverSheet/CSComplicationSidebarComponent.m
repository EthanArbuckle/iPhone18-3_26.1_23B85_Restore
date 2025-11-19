@interface CSComplicationSidebarComponent
- (CSComplicationSidebarComponent)init;
@end

@implementation CSComplicationSidebarComponent

- (CSComplicationSidebarComponent)init
{
  v5.receiver = self;
  v5.super_class = CSComplicationSidebarComponent;
  v2 = [(CSComponent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSComponent *)v2 setType:25];
  }

  return v3;
}

@end