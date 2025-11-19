@interface CMDrawingAction
- (CMDrawingAction)initWithType:(int)a3 andFloatValue:(float)a4;
- (CMDrawingAction)initWithType:(int)a3 andValue:(id)a4;
- (id)description;
- (void)dealloc;
@end

@implementation CMDrawingAction

- (void)dealloc
{
  type = self->_type;
  if ((type - 2) < 2)
  {
    CGColorRelease(self->_value);
  }

  else if (type == 4)
  {
    CGImageRelease(self->_value);
  }

  else if (type == 8)
  {
    CGPathRelease(self->_value);
  }

  v4.receiver = self;
  v4.super_class = CMDrawingAction;
  [(CMDrawingAction *)&v4 dealloc];
}

- (CMDrawingAction)initWithType:(int)a3 andValue:(id)a4
{
  v7 = a4;
  self->_type = a3;
  objc_storeStrong(&self->_value, a4);
  type = self->_type;
  if ((type - 2) < 2)
  {
    CGColorRetain(self->_value);
  }

  else if (type == 4)
  {
    CGImageRetain(self->_value);
  }

  else if (type == 8)
  {
    CGPathRetain(self->_value);
  }

  return self;
}

- (CMDrawingAction)initWithType:(int)a3 andFloatValue:(float)a4
{
  self->_type = a3;
  self->_floatValue = a4;
  return self;
}

- (id)description
{
  type = self->_type;
  if (type <= 2)
  {
    if (type)
    {
      if (type != 1)
      {
        if (type == 2)
        {
          v3 = @"CMActionStrokeColor";
          goto LABEL_19;
        }

        goto LABEL_15;
      }

      v3 = @"CMActionRestoreTransform";
      goto LABEL_19;
    }

    v7 = MEMORY[0x277CCACA8];
    v5 = [self->_value description];
    v6 = [v7 stringWithFormat:@"CMActionAddTransform : %@", v5];
LABEL_14:
    v3 = v6;

    goto LABEL_19;
  }

  if (type > 6)
  {
    if (type == 8)
    {
      v3 = @"CMActionPath";
      goto LABEL_19;
    }

    if (type != 7)
    {
LABEL_15:
      v3 = @"unknown action";
      goto LABEL_19;
    }

    v4 = MEMORY[0x277CCACA8];
    v5 = [self->_value description];
    v6 = [v4 stringWithFormat:@"CMActionLineDash : %@", v5];
    goto LABEL_14;
  }

  if (type != 3)
  {
    if (type == 6)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"CMActionLineWidth : %f", self->_floatValue];
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v3 = @"CMActionFillColor";
LABEL_19:

  return v3;
}

@end