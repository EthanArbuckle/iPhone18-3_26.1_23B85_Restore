@interface MUCompositionalStackLayout
- (MUCompositionalStackLayout)initWithContainer:(id)container group:(id)group;
- (void)setGroup:(id)group;
@end

@implementation MUCompositionalStackLayout

- (void)setGroup:(id)group
{
  if (self->_group != group)
  {
    v4 = [group copy];
    group = self->_group;
    self->_group = v4;

    internal = [(MUCompositionalStackLayoutGroup *)self->_group internal];
    [(MUCompositionalStackLayoutInternal *)self->_internal setGroup:internal];
  }
}

- (MUCompositionalStackLayout)initWithContainer:(id)container group:(id)group
{
  containerCopy = container;
  v7 = [group copy];
  v8 = [MUCompositionalStackLayoutInternal alloc];
  internal = [v7 internal];
  v10 = [(MUCompositionalStackLayoutInternal *)v8 initWithContainer:containerCopy group:internal];

  v14.receiver = self;
  v14.super_class = MUCompositionalStackLayout;
  v11 = [(MUConstraintLayout *)&v14 initWithInternal:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_internal, v10);
    objc_storeStrong(&v12->_group, v7);
  }

  return v12;
}

@end