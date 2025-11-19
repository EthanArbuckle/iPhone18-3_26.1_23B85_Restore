@interface GDAutonamingView
- (GDAutonamingView)initWithInner:(id)a3;
- (GDAutonamingView)initWithViewName:(id)a3 error:(id *)a4;
@end

@implementation GDAutonamingView

- (GDAutonamingView)initWithViewName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[GDSwiftViewService clientService];
  v8 = [v7 autonamingViewWithViewName:v6 error:a4];

  if (v8)
  {
    self = [(GDAutonamingView *)self initWithInner:v8];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (GDAutonamingView)initWithInner:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GDAutonamingView;
  v6 = [(GDAutonamingView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inner, a3);
  }

  return v7;
}

@end