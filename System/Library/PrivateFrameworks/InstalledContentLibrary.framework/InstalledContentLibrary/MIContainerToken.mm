@interface MIContainerToken
- (MIContainerToken)initWithCoder:(id)coder;
- (MIContainerToken)initWithContainer:(id)container;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MIContainerToken

- (MIContainerToken)initWithContainer:(id)container
{
  containerCopy = container;
  v15.receiver = self;
  v15.super_class = MIContainerToken;
  v5 = [(MIContainerToken *)&v15 init];
  if (v5)
  {
    rawContainer = [containerCopy rawContainer];
    if (rawContainer)
    {
      identifier = [containerCopy identifier];
      identifier = v5->_identifier;
      v5->_identifier = identifier;

      personaUniqueString = [containerCopy personaUniqueString];
      personaUniqueString = v5->_personaUniqueString;
      v5->_personaUniqueString = personaUniqueString;

      v5->_isTransient = [containerCopy isTransient];
      v5->_containerClass = [containerCopy containerClass];
      serializedContainerRepresentation = [rawContainer serializedContainerRepresentation];
      v12 = 48;
    }

    else
    {
      serializedContainerRepresentation = [containerCopy containerURL];
      v12 = 40;
    }

    v13 = *(&v5->super.isa + v12);
    *(&v5->super.isa + v12) = serializedContainerRepresentation;
  }

  return v5;
}

- (MIContainerToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = MIContainerToken;
  v5 = [(MIContainerToken *)&v23 init];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"containerURL"])
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"containerURL"];
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
      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
      identifier = v5->_identifier;
      v5->_identifier = v11;

      if (!v5->_identifier)
      {
        v9 = @"Serialized container did not encode an identifier";
        v10 = 58;
        goto LABEL_12;
      }

      v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"personaUniqueString"];
      personaUniqueString = v5->_personaUniqueString;
      v5->_personaUniqueString = v13;

      v5->_isTransient = [coderCopy decodeBoolForKey:@"isTransient"];
      v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"containerClass"];
      v5->_containerClass = [v15 unsignedLongLongValue];

      if (v5->_containerClass - 15 <= 0xFFFFFFFFFFFFFFF1)
      {
        _CreateAndLogError("[MIContainerToken initWithCoder:]", 70, @"MIInstallerErrorDomain", 186, 0, 0, @"Serialized container encoded invalid class: %llu", v16, v5->_containerClass);
        v20 = LABEL_13:;
        [coderCopy failWithError:v20];

        v19 = 0;
        goto LABEL_14;
      }

      v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serializedContainerRepresentation"];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serializedContainerRepresentation = [(MIContainerToken *)self serializedContainerRepresentation];

  if (serializedContainerRepresentation)
  {
    identifier = [(MIContainerToken *)self identifier];
    [coderCopy encodeObject:identifier forKey:@"identifier"];

    personaUniqueString = [(MIContainerToken *)self personaUniqueString];
    [coderCopy encodeObject:personaUniqueString forKey:@"personaUniqueString"];

    [coderCopy encodeBool:-[MIContainerToken isTransient](self forKey:{"isTransient"), @"isTransient"}];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MIContainerToken containerClass](self, "containerClass")}];
    [coderCopy encodeObject:v8 forKey:@"containerClass"];

    [(MIContainerToken *)self serializedContainerRepresentation];
  }

  else
  {
    [(MIContainerToken *)self containerURL];
  }
  v9 = ;
  [coderCopy encodeObject:? forKey:?];
}

- (id)description
{
  identifier = [(MIContainerToken *)self identifier];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (identifier)
  {
    personaUniqueString = [(MIContainerToken *)self personaUniqueString];
    isTransient = [(MIContainerToken *)self isTransient];
    containerClass = [(MIContainerToken *)self containerClass];
    v10 = 78;
    if (isTransient)
    {
      v10 = 89;
    }

    v11 = [v4 stringWithFormat:@"<%@ identity:%@/%@ isTransient:%c containerClass:%llu>", v6, identifier, personaUniqueString, v10, containerClass];
  }

  else
  {
    personaUniqueString = [(MIContainerToken *)self containerURL];
    path = [personaUniqueString path];
    v11 = [v4 stringWithFormat:@"<%@ containerPath:%@>", v6, path];
  }

  return v11;
}

@end