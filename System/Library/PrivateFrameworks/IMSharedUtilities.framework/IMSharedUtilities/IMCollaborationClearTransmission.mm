@interface IMCollaborationClearTransmission
- (IMCollaborationClearTransmission)initWithCoder:(id)coder;
- (IMCollaborationClearTransmission)initWithCollaborationId:(id)id date:(id)date guidString:(id)string;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMCollaborationClearTransmission

- (IMCollaborationClearTransmission)initWithCollaborationId:(id)id date:(id)date guidString:(id)string
{
  idCopy = id;
  dateCopy = date;
  stringCopy = string;
  v15.receiver = self;
  v15.super_class = IMCollaborationClearTransmission;
  v12 = [(IMCollaborationClearTransmission *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_collaborationId, id);
    objc_storeStrong(&v13->_date, date);
    objc_storeStrong(&v13->_guidString, string);
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  collaborationId = [(IMCollaborationClearTransmission *)self collaborationId];
  v6 = NSStringFromSelector(sel_collaborationId);
  [coderCopy encodeObject:collaborationId forKey:v6];

  date = [(IMCollaborationClearTransmission *)self date];
  v8 = NSStringFromSelector(sel_date);
  [coderCopy encodeObject:date forKey:v8];

  guidString = [(IMCollaborationClearTransmission *)self guidString];
  v9 = NSStringFromSelector(sel_guidString);
  [coderCopy encodeObject:guidString forKey:v9];
}

- (IMCollaborationClearTransmission)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = IMCollaborationClearTransmission;
  v5 = [(IMCollaborationClearTransmission *)&v19 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_collaborationId);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    collaborationId = v5->_collaborationId;
    v5->_collaborationId = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_date);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    date = v5->_date;
    v5->_date = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_guidString);
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
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
  collaborationId = [(IMCollaborationClearTransmission *)self collaborationId];
  v7 = [v3 stringWithFormat:@"<%@ %p collaborationId = %@", v5, self, collaborationId];

  return v7;
}

@end