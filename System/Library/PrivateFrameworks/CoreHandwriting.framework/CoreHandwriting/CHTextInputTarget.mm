@interface CHTextInputTarget
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToInputTarget:(id)a3;
- (CGRect)frame;
- (CHTextInputTarget)initWithCoder:(id)a3;
- (CHTextInputTarget)initWithIdentifier:(id)a3 frame:(CGRect)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHTextInputTarget

- (CHTextInputTarget)initWithIdentifier:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v19.receiver = self;
  v19.super_class = CHTextInputTarget;
  v15 = [(CHTextInputTarget *)&v19 init];
  if (v15)
  {
    v16 = objc_msgSend_copy(v9, v10, v11, v12, v13, v14);
    inputTargetIdentifier = v15->_inputTargetIdentifier;
    v15->_inputTargetIdentifier = v16;

    v15->_frame.origin.x = x;
    v15->_frame.origin.y = y;
    v15->_frame.size.width = width;
    v15->_frame.size.height = height;
  }

  return v15;
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = CHTextInputTarget;
  v3 = [(CHTextInputTarget *)&v10 description];
  v8 = objc_msgSend_stringByAppendingFormat_(v3, v4, @" ID: %@, frame: {x: %0.1f, y: %0.1f, width: %0.1f, height: %0.1f}", v5, v6, v7, self->_inputTargetIdentifier, *&self->_frame.origin.x, *&self->_frame.origin.y, *&self->_frame.size.width, *&self->_frame.size.height);

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  inputTargetIdentifier = self->_inputTargetIdentifier;
  v28 = a3;
  objc_msgSend_encodeObject_forKey_(v28, v5, inputTargetIdentifier, @"inputTargetIdentifier", v6, v7);
  x = self->_frame.origin.x;
  *&x = x;
  objc_msgSend_encodeFloat_forKey_(v28, v9, @"frameXOrigin", v10, v11, v12, x);
  y = self->_frame.origin.y;
  *&y = y;
  objc_msgSend_encodeFloat_forKey_(v28, v14, @"frameYOrigin", v15, v16, v17, y);
  width = self->_frame.size.width;
  *&width = width;
  objc_msgSend_encodeFloat_forKey_(v28, v19, @"frameWidth", v20, v21, v22, width);
  height = self->_frame.size.height;
  *&height = height;
  objc_msgSend_encodeFloat_forKey_(v28, v24, @"frameHeight", v25, v26, v27, height);
}

- (CHTextInputTarget)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v6, v5, @"inputTargetIdentifier", v7, v8);
  objc_msgSend_decodeFloatForKey_(v4, v10, @"frameXOrigin", v11, v12, v13);
  v15 = v14;
  objc_msgSend_decodeFloatForKey_(v4, v16, @"frameYOrigin", v17, v18, v19);
  v21 = v20;
  objc_msgSend_decodeFloatForKey_(v4, v22, @"frameWidth", v23, v24, v25);
  v27 = v26;
  objc_msgSend_decodeFloatForKey_(v4, v28, @"frameHeight", v29, v30, v31);
  v33 = v32;

  if (v9)
  {
    self = objc_msgSend_initWithIdentifier_frame_(self, v34, v9, v35, v36, v37, v15, v21, v27, v33);
  }

  return self;
}

- (BOOL)isEqualToInputTarget:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self == v4)
  {
    v30 = 1;
  }

  else
  {
    inputTargetIdentifier = self->_inputTargetIdentifier;
    v12 = objc_msgSend_inputTargetIdentifier(v4, v5, v6, v7, v8, v9);
    v18 = v12;
    if (inputTargetIdentifier == v12)
    {
    }

    else
    {
      if (!self->_inputTargetIdentifier)
      {

LABEL_10:
        v30 = 0;
        goto LABEL_11;
      }

      v19 = objc_msgSend_inputTargetIdentifier(v10, v13, v14, v15, v16, v17);
      isEqualToNumber = objc_msgSend_isEqualToNumber_(v19, v20, self->_inputTargetIdentifier, v21, v22, v23);

      if (!isEqualToNumber)
      {
        goto LABEL_10;
      }
    }

    objc_msgSend_frame(v10, v25, v26, v27, v28, v29);
    v36.origin.x = v31;
    v36.origin.y = v32;
    v36.size.width = v33;
    v36.size.height = v34;
    v30 = CGRectEqualToRect(self->_frame, v36);
  }

LABEL_11:

  return v30;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToInputTarget = objc_msgSend_isEqualToInputTarget_(self, v5, v4, v6, v7, v8);

    return isEqualToInputTarget;
  }

  else
  {

    return 0;
  }
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end