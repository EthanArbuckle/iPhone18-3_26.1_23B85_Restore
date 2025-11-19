@interface _UIDataSourceSnapshot
- (_NSRange)rangeForSection:(int64_t)a3;
- (_UIDataSourceSnapshot)initWithDataSourceSnapshotter:(id)a3;
@end

@implementation _UIDataSourceSnapshot

- (_UIDataSourceSnapshot)initWithDataSourceSnapshotter:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIDataSourceSnapshot;
  v5 = [(_UIDataSourceSnapshot *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    snapshotter = v5->_snapshotter;
    v5->_snapshotter = v6;
  }

  return v5;
}

- (_NSRange)rangeForSection:(int64_t)a3
{
  v3 = [(_UIDataSourceSnapshotter *)self->_snapshotter rangeForSection:a3];
  result.length = v4;
  result.location = v3;
  return result;
}

@end