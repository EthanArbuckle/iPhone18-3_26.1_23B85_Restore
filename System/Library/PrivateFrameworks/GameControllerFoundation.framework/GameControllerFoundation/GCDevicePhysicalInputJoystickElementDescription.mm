@interface GCDevicePhysicalInputJoystickElementDescription
- (BOOL)isEqual:(id)a3;
- (GCDevicePhysicalInputJoystickElementDescription)init;
- (GCDevicePhysicalInputJoystickElementDescription)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCDevicePhysicalInputJoystickElementDescription

- (GCDevicePhysicalInputJoystickElementDescription)init
{
  v3.receiver = self;
  v3.super_class = GCDevicePhysicalInputJoystickElementDescription;
  result = [(GCDevicePhysicalInputElementDescription *)&v3 init];
  result->_eventXValueField = -1;
  result->_eventYValueField = -1;
  result->_eventPressValueField = -1;
  result->_eventTouchValueField = -1;
  return result;
}

- (GCDevicePhysicalInputJoystickElementDescription)initWithCoder:(id)a3
{
  v55.receiver = self;
  v55.super_class = GCDevicePhysicalInputJoystickElementDescription;
  v3 = a3;
  v4 = [(GCDevicePhysicalInputElementDescription *)&v55 initWithCoder:v3];
  v4->_supportsPress = [v3 decodeBoolForKey:@"supportsPress"];
  v4->_supportsTouch = [v3 decodeBoolForKey:@"supportsTouch"];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0, v55.receiver, v55.super_class}];
  v8 = [v3 decodeObjectOfClasses:v7 forKey:@"xySources"];
  xySources = v4->_xySources;
  v4->_xySources = v8;

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v3 decodeObjectOfClasses:v12 forKey:@"xSources"];
  xSources = v4->_xSources;
  v4->_xSources = v13;

  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  v18 = [v3 decodeObjectOfClasses:v17 forKey:@"ySources"];
  ySources = v4->_ySources;
  v4->_ySources = v18;

  v20 = MEMORY[0x1E695DFD8];
  v21 = objc_opt_class();
  v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
  v23 = [v3 decodeObjectOfClasses:v22 forKey:@"upSources"];
  upSources = v4->_upSources;
  v4->_upSources = v23;

  v25 = MEMORY[0x1E695DFD8];
  v26 = objc_opt_class();
  v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
  v28 = [v3 decodeObjectOfClasses:v27 forKey:@"leftSources"];
  leftSources = v4->_leftSources;
  v4->_leftSources = v28;

  v30 = MEMORY[0x1E695DFD8];
  v31 = objc_opt_class();
  v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
  v33 = [v3 decodeObjectOfClasses:v32 forKey:@"downSources"];
  downSources = v4->_downSources;
  v4->_downSources = v33;

  v35 = MEMORY[0x1E695DFD8];
  v36 = objc_opt_class();
  v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
  v38 = [v3 decodeObjectOfClasses:v37 forKey:@"rightSources"];
  rightSources = v4->_rightSources;
  v4->_rightSources = v38;

  v40 = MEMORY[0x1E695DFD8];
  v41 = objc_opt_class();
  v42 = [v40 setWithObjects:{v41, objc_opt_class(), 0}];
  v43 = [v3 decodeObjectOfClasses:v42 forKey:@"pressSources"];
  pressSources = v4->_pressSources;
  v4->_pressSources = v43;

  v45 = MEMORY[0x1E695DFD8];
  v46 = objc_opt_class();
  v47 = [v45 setWithObjects:{v46, objc_opt_class(), 0}];
  v48 = [v3 decodeObjectOfClasses:v47 forKey:@"touchSources"];
  touchSources = v4->_touchSources;
  v4->_touchSources = v48;

  v4->_analogAxes = [v3 decodeBoolForKey:@"analogAxes"];
  v4->_analogPress = [v3 decodeBoolForKey:@"analogPress"];
  [v3 decodeFloatForKey:@"directionPressedThreshold"];
  v4->_directionPressedThreshold = v50;
  [v3 decodeFloatForKey:@"pressedThreshold"];
  v4->_pressedThreshold = v51;
  [v3 decodeFloatForKey:@"touchedThreshold"];
  v4->_touchedThreshold = v52;
  v4->_eventXValueField = [v3 decodeIntegerForKey:@"eventXValueField"];
  v4->_eventYValueField = [v3 decodeIntegerForKey:@"eventYValueField"];
  v4->_eventPressValueField = [v3 decodeIntegerForKey:@"eventPressValueField"];
  v53 = [v3 decodeIntegerForKey:@"eventTouchValueField"];

  v4->_eventTouchValueField = v53;
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = GCDevicePhysicalInputJoystickElementDescription;
  v4 = a3;
  [(GCDevicePhysicalInputElementDescription *)&v8 encodeWithCoder:v4];
  [v4 encodeBool:self->_supportsPress forKey:{@"supportsPress", v8.receiver, v8.super_class}];
  [v4 encodeBool:self->_supportsTouch forKey:@"supportsTouch"];
  [v4 encodeObject:self->_xySources forKey:@"xySources"];
  [v4 encodeObject:self->_xSources forKey:@"xSources"];
  [v4 encodeObject:self->_ySources forKey:@"ySources"];
  [v4 encodeObject:self->_upSources forKey:@"upSources"];
  [v4 encodeObject:self->_leftSources forKey:@"leftSources"];
  [v4 encodeObject:self->_downSources forKey:@"downSources"];
  [v4 encodeObject:self->_rightSources forKey:@"rightSources"];
  [v4 encodeObject:self->_pressSources forKey:@"pressSources"];
  [v4 encodeObject:self->_touchSources forKey:@"touchSources"];
  [v4 encodeBool:self->_analogAxes forKey:@"analogAxes"];
  [v4 encodeBool:self->_analogPress forKey:@"analogPress"];
  *&v5 = self->_directionPressedThreshold;
  [v4 encodeFloat:@"directionPressedThreshold" forKey:v5];
  *&v6 = self->_pressedThreshold;
  [v4 encodeFloat:@"pressedThreshold" forKey:v6];
  *&v7 = self->_touchedThreshold;
  [v4 encodeFloat:@"touchedThreshold" forKey:v7];
  [v4 encodeInteger:self->_eventXValueField forKey:@"eventXValueField"];
  [v4 encodeInteger:self->_eventYValueField forKey:@"eventYValueField"];
  [v4 encodeInteger:self->_eventPressValueField forKey:@"eventPressValueField"];
  [v4 encodeInteger:self->_eventTouchValueField forKey:@"eventTouchValueField"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = GCDevicePhysicalInputJoystickElementDescription;
  v4 = [(GCDevicePhysicalInputElementDescription *)&v6 copyWithZone:a3];
  *(v4 + 48) = self->_supportsPress;
  *(v4 + 49) = self->_supportsTouch;
  objc_storeStrong(v4 + 8, self->_xySources);
  objc_storeStrong(v4 + 9, self->_xSources);
  objc_storeStrong(v4 + 10, self->_ySources);
  objc_storeStrong(v4 + 11, self->_upSources);
  objc_storeStrong(v4 + 12, self->_leftSources);
  objc_storeStrong(v4 + 13, self->_downSources);
  objc_storeStrong(v4 + 14, self->_rightSources);
  objc_storeStrong(v4 + 15, self->_pressSources);
  objc_storeStrong(v4 + 16, self->_touchSources);
  *(v4 + 50) = self->_analogAxes;
  *(v4 + 51) = self->_analogPress;
  *(v4 + 13) = LODWORD(self->_directionPressedThreshold);
  *(v4 + 14) = LODWORD(self->_pressedThreshold);
  *(v4 + 15) = LODWORD(self->_touchedThreshold);
  *(v4 + 17) = self->_eventXValueField;
  *(v4 + 18) = self->_eventYValueField;
  *(v4 + 19) = self->_eventPressValueField;
  *(v4 + 20) = self->_eventTouchValueField;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_32;
  }

  v16.receiver = self;
  v16.super_class = GCDevicePhysicalInputJoystickElementDescription;
  if (![(GCDevicePhysicalInputElementDescription *)&v16 isEqual:v4])
  {
    goto LABEL_32;
  }

  if (self->_supportsPress != *(v4 + 48))
  {
    goto LABEL_32;
  }

  if (self->_supportsTouch != *(v4 + 49))
  {
    goto LABEL_32;
  }

  xySources = self->_xySources;
  if (xySources != v4[8] && ![(NSArray *)xySources isEqual:?])
  {
    goto LABEL_32;
  }

  xSources = self->_xSources;
  if (xSources != v4[9] && ![(NSArray *)xSources isEqual:?])
  {
    goto LABEL_32;
  }

  if (((ySources = self->_ySources, ySources == v4[10]) || [(NSArray *)ySources isEqual:?]) && ((upSources = self->_upSources, upSources == v4[11]) || [(NSArray *)upSources isEqual:?]) && ((leftSources = self->_leftSources, leftSources == v4[12]) || [(NSArray *)leftSources isEqual:?]) && ((downSources = self->_downSources, downSources == v4[13]) || [(NSArray *)downSources isEqual:?]) && ((rightSources = self->_rightSources, rightSources == v4[14]) || [(NSArray *)rightSources isEqual:?]) && ((pressSources = self->_pressSources, pressSources == v4[15]) || [(NSArray *)pressSources isEqual:?]) && ((touchSources = self->_touchSources, touchSources == v4[16]) || [(NSArray *)touchSources isEqual:?]) && self->_analogAxes == *(v4 + 50) && self->_analogPress == *(v4 + 51) && self->_directionPressedThreshold == *(v4 + 13) && self->_pressedThreshold == *(v4 + 14) && self->_touchedThreshold == *(v4 + 15) && self->_eventXValueField == v4[17] && self->_eventYValueField == v4[18] && self->_eventPressValueField == v4[19])
  {
    v14 = self->_eventTouchValueField == v4[20];
  }

  else
  {
LABEL_32:
    v14 = 0;
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = GCDevicePhysicalInputJoystickElementDescription;
  v4 = [(GCDevicePhysicalInputElementDescription *)&v10 description];
  v5 = v4;
  if (self->_analogAxes)
  {
    v6 = @"analog";
  }

  else
  {
    v6 = @"digital";
  }

  eventPressValueField = self->_eventPressValueField;
  v8 = [v3 stringWithFormat:@"Joystick %@ %@ X:%#zx Y:%#zx P:%#zx T:%#zx", v4, v6, self->_eventXValueField, self->_eventYValueField, eventPressValueField, self->_eventTouchValueField];

  return v8;
}

@end