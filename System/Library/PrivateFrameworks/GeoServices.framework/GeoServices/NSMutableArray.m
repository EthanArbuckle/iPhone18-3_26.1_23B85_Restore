@interface NSMutableArray
- (void)_geo_filter:(id)a3;
@end

@implementation NSMutableArray

- (void)_geo_filter:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self count])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100051F20;
    v6[3] = &unk_100083D08;
    v7 = v4;
    v5 = [NSPredicate predicateWithBlock:v6];
    [(NSMutableArray *)self filterUsingPredicate:v5];
  }
}

@end