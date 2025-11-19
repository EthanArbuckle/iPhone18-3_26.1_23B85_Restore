@interface _MNMapPointWithIndex
- (LineSegment<double,)segment;
- (Matrix<double,)point;
@end

@implementation _MNMapPointWithIndex

- (LineSegment<double,)segment
{
  v2 = self->_segment._origin._e[0];
  v3 = self->_segment._origin._e[1];
  v4 = self->_segment._direction._e[0];
  v5 = self->_segment._direction._e[1];
  result._direction._e[1] = v5;
  result._direction._e[0] = v4;
  result._origin._e[1] = v3;
  result._origin._e[0] = v2;
  return result;
}

- (Matrix<double,)point
{
  v2 = self->_point._e[0];
  v3 = self->_point._e[1];
  result._e[1] = v3;
  result._e[0] = v2;
  return result;
}

@end