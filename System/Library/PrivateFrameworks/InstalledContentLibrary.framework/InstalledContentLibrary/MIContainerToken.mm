@interface MIContainerToken
- (MIContainerToken)initWithCoder:(id)a3;
- (MIContainerToken)initWithContainer:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MIContainerToken

- (MIContainerToken)initWithContainer:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MIContainerToken;
  v5 = [(MIContainerToken *)&v15 init];
  if (v5)
  {
    v6 = [v4 rawContainer];
    if (v6)
    {
      v7 = [v4 identifier];
      identifier = v5->_identifier;
      v5->_identifier = v7;

      v9 = [v4 personaUniqueString];
      personaUniqueString = v5->_personaUniqueString;
      v5->_personaUniqueString = v9;

      v5->_isTransient = [v4 isTransient];
      v5->_containerClass = [v4 containerClass];
      v11 = [v6 serializedContainerRepresentation];
      v12 = 48;
    }

    else
    {
      v11 = [v4 containerURL];
      v12 = 40;
    }

    v13 = *(&v5->super.isa + v12);
    *(&v5->super.isa + v12) = v11;
  }

  return v5;
}

- (MIContainerToken)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = MIContainerToken;
  v5 = [(MIContainerToken *)&v23 init];
  if (v5)
  {
    if ([v4 containsValueForKey:@"containerURL"])
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"containerURL"];
      containerURL = v5->_containerURL;
      v5->_containerURL = v6;

      if (!v5->_containerURL)
      {
        v9 = @"Serialized container did not encode containerURL";
        v10 = 52;
LABEL_12:
        _CreateAndLogError("[MIContainerToken initWithCoder:]", v10, @"MIInstallerErrorDomain", 186, 0, 0, v9, v8, v22);
        goto LABEL_13;
      }
    }

    else
    {
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
      identifier = v5->_identifier;
      v5->_identifier = v11;

      if (!v5->_identifier)
      {
        v9 = @"Serialized container did not encode an identifier";
        v10 = 58;
        goto LABEL_12;
      }

      v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"personaUniqueString"];
      personaUniqueString = v5->_personaUniqueString;
      v5->_personaUniqueString = v13;

      v5->_isTransient = [v4 decodeBoolForKey:@"isTransient"];
      v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"containerClass"];
      v5->_containerClass = [v15 unsignedLongLongValue];

      if (v5->_containerClass - 15 <= 0xFFFFFFFFFFFFFFF1)
      {
        _CreateAndLogError("[MIContainerToken initWithCoder:]", 70, @"MIInstallerErrorDomain", 186, 0, 0, @"Serialized container encoded invalid class: %llu", v16, v5->_containerClass);
        v20 = LABEL_13:;
        [v4 failWithError:v20];

        v19 = 0;
        goto LABEL_14;
      }

      v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serializedContainerRepresentation"];
      serializedContainerRepresentation = v5->_serializedContainerRepresentation;
      v5->_serializedContainerRepresentation = v17;

      if (!v5->_serializedContainerRepresentation)
      {
        v9 = @"Serialized container did not encode the MobileContainerManager serialization of the container";
        v10 = 76;
        goto LABEL_12;
      }
    }
  }

  v19 = v5;
LABEL_14:

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MIContainerToken *)self serializedContainerRepresentation];

  if (v5)
  {
    v6 = [(MIContainerToken *)self identifier];
    [v4 encodeObject:v6 forKey:@"identifier"];

    v7 = [(MIContainerToken *)self personaUniqueString];
    [v4 encodeObject:v7 forKey:@"personaUniqueString"];

    [v4 encodeBool:-[MIContainerToken isTransient](self forKey:{"isTransient"), @"isTransient"}];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MIContainerToken containerClass](self, "containerClass")}];
    [v4 encodeObject:v8 forKey:@"containerClass"];

    [(MIContainerToken *)self serializedContainerRepresentation];
  }

  else
  {
    [(MIContainerToken *)self containerURL];
  }
  v9 = ;
  [v4 encodeObject:? forKey:?];
}

- (id)description
{
  v3 = [(MIContainerToken *)self identifier];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (v3)
  {
    v7 = [(MIContainerToken *)self personaUniqueString];
    v8 = [(MIContainerToken *)self isTransient];
    v9 = [(MIContainerToken *)self containerClass];
    v10 = 78;
    if (v8)
    {
      v10 = 89;
    }

    v11 = [v4 stringWithFormat:@"<%@ identity:%@/%@ isTransient:%c containerClass:%llu>", v6, v3, v7, v10, v9];
  }

  else
  {
    v7 = [(MIContainerToken *)self containerURL];
    v12 = [v7 path];
    v11 = [v4 stringWithFormat:@"<%@ containerPath:%@>", v6, v12];
  }

  return v11;
}

@end