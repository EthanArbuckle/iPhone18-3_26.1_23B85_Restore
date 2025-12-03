@interface GDAutonamingView
- (GDAutonamingView)initWithInner:(id)inner;
- (GDAutonamingView)initWithViewName:(id)name error:(id *)error;
@end

@implementation GDAutonamingView

- (GDAutonamingView)initWithViewName:(id)name error:(id *)error
{
  nameCopy = name;
  v7 = +[GDSwiftViewService clientService];
  v8 = [v7 autonamingViewWithViewName:nameCopy error:error];

  if (v8)
  {
    self = [(GDAutonamingView *)self initWithInner:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (GDAutonamingView)initWithInner:(id)inner
{
  innerCopy = inner;
  v9.receiver = self;
  v9.super_class = GDAutonamingView;
  v6 = [(GDAutonamingView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inner, inner);
  }

  return v7;
}

@end