@interface CPLAdjustments
- (CPLAdjustments)initWithCoder:(id)a3;
- (id)adjustmentSimpleDescription;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CPLAdjustments

- (id)adjustmentSimpleDescription
{
  adjustmentSourceType = self->_adjustmentSourceType;
  v3 = @"autoloop";
  v4 = @"cinematic";
  adjustmentRenderTypes = self->_adjustmentRenderTypes;
  v6 = @"undef";
  if (adjustmentRenderTypes == 2)
  {
    v6 = @"portait";
  }

  if (adjustmentRenderTypes != 128)
  {
    v4 = v6;
  }

  if (adjustmentRenderTypes != 1)
  {
    v3 = v4;
  }

  v7 = @"orig.";
  if (adjustmentSourceType)
  {
    v7 = @"unkn.";
  }

  if (adjustmentSourceType == 1)
  {
    v7 = @"base";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ on %@ (%@)", self->_adjustmentType, v7, v3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 cplCopyPropertiesFromObject:self withCopyBlock:0];
  return v4;
}

- (CPLAdjustments)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CPLAdjustments;
  v5 = [(CPLAdjustments *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [v5 cplDecodePropertiesFromCoder:v4];
  }

  return v6;
}

@end