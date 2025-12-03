@interface _NUFlexRangeChannelProperties
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _NUFlexRangeChannelProperties

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(_NUFlexRangeChannelProperties *)self min];
  v5 = v4;
  [(_NUFlexRangeChannelProperties *)self min];
  v7 = exp2f(v6);
  [(_NUFlexRangeChannelProperties *)self max];
  v9 = v8;
  [(_NUFlexRangeChannelProperties *)self max];
  v11 = exp2f(v10);
  [(_NUFlexRangeChannelProperties *)self gamma];
  v13 = v12;
  [(_NUFlexRangeChannelProperties *)self alternateOffset];
  v15 = v14;
  [(_NUFlexRangeChannelProperties *)self baseOffset];
  return [v3 stringWithFormat:@"[min:%0.3f(%0.3f) max:%0.3f(%0.3f) gamma:%0.3f kA:%g kB:%g]", *&v5, *&v7, *&v9, *&v11, *&v13, *&v15, v16];
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [_NUFlexRangeChannelProperties allocWithZone:zone];
  *(result + 2) = LODWORD(self->_min);
  *(result + 3) = LODWORD(self->_max);
  *(result + 4) = LODWORD(self->_gamma);
  *(result + 5) = LODWORD(self->_baseOffset);
  *(result + 6) = LODWORD(self->_alternateOffset);
  return result;
}

@end