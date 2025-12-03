@interface NSMutableArray
- (void)_geo_filter:(id)_geo_filter;
@end

@implementation NSMutableArray

- (void)_geo_filter:(id)_geo_filter
{
  _geo_filterCopy = _geo_filter;
  if ([(NSMutableArray *)self count])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100051F20;
    v6[3] = &unk_100083D08;
    v7 = _geo_filterCopy;
    v5 = [NSPredicate predicateWithBlock:v6];
    [(NSMutableArray *)self filterUsingPredicate:v5];
  }
}

@end