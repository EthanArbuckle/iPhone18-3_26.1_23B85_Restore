@interface IMCollaborationClearTransmission
- (IMCollaborationClearTransmission)initWithCoder:(id)a3;
- (IMCollaborationClearTransmission)initWithCollaborationId:(id)a3 date:(id)a4 guidString:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMCollaborationClearTransmission

- (IMCollaborationClearTransmission)initWithCollaborationId:(id)a3 date:(id)a4 guidString:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = IMCollaborationClearTransmission;
  v12 = [(IMCollaborationClearTransmission *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_collaborationId, a3);
    objc_storeStrong(&v13->_date, a4);
    objc_storeStrong(&v13->_guidString, a5);
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IMCollaborationClearTransmission *)self collaborationId];
  v6 = NSStringFromSelector(sel_collaborationId);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(IMCollaborationClearTransmission *)self date];
  v8 = NSStringFromSelector(sel_date);
  [v4 encodeObject:v7 forKey:v8];

  v10 = [(IMCollaborationClearTransmission *)self guidString];
  v9 = NSStringFromSelector(sel_guidString);
  [v4 encodeObject:v10 forKey:v9];
}

- (IMCollaborationClearTransmission)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = IMCollaborationClearTransmission;
  v5 = [(IMCollaborationClearTransmission *)&v19 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_collaborationId);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    collaborationId = v5->_collaborationId;
    v5->_collaborationId = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_date);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    date = v5->_date;
    v5->_date = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_guidString);
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
    guidString = v5->_guidString;
    v5->_guidString = v16;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(IMCollaborationClearTransmission *)self collaborationId];
  v7 = [v3 stringWithFormat:@"<%@ %p collaborationId = %@", v5, self, v6];

  return v7;
}

@end