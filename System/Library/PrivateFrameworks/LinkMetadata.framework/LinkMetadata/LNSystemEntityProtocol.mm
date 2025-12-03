@interface LNSystemEntityProtocol
+ (LNSystemEntityProtocol)assistantEntityProtocol;
+ (LNSystemEntityProtocol)indexedEntityProtocol;
+ (LNSystemEntityProtocol)intentMessageProtocol;
+ (LNSystemEntityProtocol)mailAccountProtocol;
+ (LNSystemEntityProtocol)mailAddresseeProtocol;
+ (LNSystemEntityProtocol)mailMessageProtocol;
+ (LNSystemEntityProtocol)mailboxProtocol;
+ (LNSystemEntityProtocol)messageGroupProtocol;
+ (LNSystemEntityProtocol)messageParticipantProtocol;
+ (LNSystemEntityProtocol)persistentFileIdentifiableEntityProtocol;
+ (LNSystemEntityProtocol)protocolWithIdentifier:(id)identifier;
+ (LNSystemEntityProtocol)structuredDataRepresentableTypeProtocol;
+ (LNSystemEntityProtocol)uniqueEntityProtocol;
+ (LNSystemEntityProtocol)updatableEntityProtocol;
+ (LNSystemEntityProtocol)urlRepresentableProtocol;
+ (LNSystemEntityProtocol)visualSearchOCRProtocol;
+ (LNSystemEntityProtocol)visualSearchProtocol;
+ (NSArray)allProtocols;
+ (id)allProtocolsByIdentifier;
- (BOOL)isEqual:(id)equal;
- (LNSystemEntityProtocol)initWithCoder:(id)coder;
- (LNSystemEntityProtocol)initWithIdentifier:(id)identifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNSystemEntityProtocol

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      identifier = [(LNSystemEntityProtocol *)self identifier];
      identifier2 = [(LNSystemEntityProtocol *)v6 identifier];
      v9 = [identifier isEqualToString:identifier2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  identifier = [(LNSystemEntityProtocol *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(LNSystemEntityProtocol *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];
}

- (LNSystemEntityProtocol)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  if (v5)
  {
    self = [(LNSystemEntityProtocol *)self initWithIdentifier:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(LNSystemEntityProtocol *)self identifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, identifier: %@>", v5, self, identifier];

  return v7;
}

- (LNSystemEntityProtocol)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNSystemEntityProtocol.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v12.receiver = self;
  v12.super_class = LNSystemEntityProtocol;
  v6 = [(LNSystemEntityProtocol *)&v12 init];
  if (v6)
  {
    v7 = [identifierCopy copy];
    identifier = v6->_identifier;
    v6->_identifier = v7;

    v9 = v6;
  }

  return v6;
}

+ (LNSystemEntityProtocol)protocolWithIdentifier:(id)identifier
{
  v14 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNSystemEntityProtocol.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  allProtocolsByIdentifier = [self allProtocolsByIdentifier];
  v7 = [allProtocolsByIdentifier valueForKey:identifierCopy];

  if (!v7)
  {
    v8 = getLNLogCategoryExecution();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = identifierCopy;
      _os_log_impl(&dword_18EF7E000, v8, OS_LOG_TYPE_ERROR, "%{public}@ is not a valid LNSystemEntityProtocolIdentifier", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (NSArray)allProtocols
{
  allProtocolsByIdentifier = [self allProtocolsByIdentifier];
  allValues = [allProtocolsByIdentifier allValues];

  return allValues;
}

+ (id)allProtocolsByIdentifier
{
  if (allProtocolsByIdentifier_onceToken[0] != -1)
  {
    dispatch_once(allProtocolsByIdentifier_onceToken, &__block_literal_global_78);
  }

  v3 = allProtocolsByIdentifier_protocolsByIdentifier;

  return v3;
}

void __50__LNSystemEntityProtocol_allProtocolsByIdentifier__block_invoke()
{
  v20[16] = *MEMORY[0x1E69E9840];
  v19[0] = @"com.apple.appintents.entity.AssistantEntity";
  v18 = [[LNSystemEntityProtocol alloc] initWithIdentifier:@"com.apple.appintents.entity.AssistantEntity"];
  v20[0] = v18;
  v19[1] = @"com.apple.appintents.entity.MailAccount";
  v17 = [[LNSystemEntityProtocol alloc] initWithIdentifier:@"com.apple.appintents.entity.MailAccount"];
  v20[1] = v17;
  v19[2] = @"com.apple.appintents.entity.MailAddressee";
  v16 = [[LNSystemEntityProtocol alloc] initWithIdentifier:@"com.apple.appintents.entity.MailAddressee"];
  v20[2] = v16;
  v19[3] = @"com.apple.appintents.entity.MailMessage";
  v15 = [[LNSystemEntityProtocol alloc] initWithIdentifier:@"com.apple.appintents.entity.MailMessage"];
  v20[3] = v15;
  v19[4] = @"com.apple.appintents.entity.Mailbox";
  v14 = [[LNSystemEntityProtocol alloc] initWithIdentifier:@"com.apple.appintents.entity.Mailbox"];
  v20[4] = v14;
  v19[5] = @"com.apple.appintents.entity.IntentMessage";
  v13 = [[LNSystemEntityProtocol alloc] initWithIdentifier:@"com.apple.appintents.entity.IntentMessage"];
  v20[5] = v13;
  v19[6] = @"com.apple.appintents.entity.MessageGroup";
  v12 = [[LNSystemEntityProtocol alloc] initWithIdentifier:@"com.apple.appintents.entity.MessageGroup"];
  v20[6] = v12;
  v19[7] = @"com.apple.appintents.entity.MessageParticipant";
  v0 = [[LNSystemEntityProtocol alloc] initWithIdentifier:@"com.apple.appintents.entity.MessageParticipant"];
  v20[7] = v0;
  v19[8] = @"com.apple.appintents.entity.SingleEntity";
  v1 = [[LNSystemEntityProtocol alloc] initWithIdentifier:@"com.apple.appintents.entity.SingleEntity"];
  v20[8] = v1;
  v19[9] = @"com.apple.appintents.entity.Updatable";
  v2 = [[LNSystemEntityProtocol alloc] initWithIdentifier:@"com.apple.appintents.entity.Updatable"];
  v20[9] = v2;
  v19[10] = @"com.apple.appintents.entity.Indexed";
  v3 = [[LNSystemEntityProtocol alloc] initWithIdentifier:@"com.apple.appintents.entity.Indexed"];
  v20[10] = v3;
  v19[11] = @"com.apple.appintents.entity.PersistentFileIdentifiable";
  v4 = [[LNSystemEntityProtocol alloc] initWithIdentifier:@"com.apple.appintents.entity.PersistentFileIdentifiable"];
  v20[11] = v4;
  v19[12] = @"com.apple.appintents.entity.VisualSearch";
  v5 = [[LNSystemEntityProtocol alloc] initWithIdentifier:@"com.apple.appintents.entity.VisualSearch"];
  v20[12] = v5;
  v19[13] = @"com.apple.appintents.entity.VisualSearchOCR";
  v6 = [[LNSystemEntityProtocol alloc] initWithIdentifier:@"com.apple.appintents.entity.VisualSearchOCR"];
  v20[13] = v6;
  v19[14] = @"com.apple.appintents.entity.URLRepresentable";
  v7 = [[LNSystemEntityProtocol alloc] initWithIdentifier:@"com.apple.appintents.entity.URLRepresentable"];
  v20[14] = v7;
  v19[15] = @"com.apple.appintents.entity.StructuredDataRepresentableType";
  v8 = [[LNSystemEntityProtocol alloc] initWithIdentifier:@"com.apple.appintents.entity.StructuredDataRepresentableType"];
  v20[15] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:16];
  v10 = allProtocolsByIdentifier_protocolsByIdentifier;
  allProtocolsByIdentifier_protocolsByIdentifier = v9;

  v11 = *MEMORY[0x1E69E9840];
}

+ (LNSystemEntityProtocol)structuredDataRepresentableTypeProtocol
{
  if (structuredDataRepresentableTypeProtocol_onceToken != -1)
  {
    dispatch_once(&structuredDataRepresentableTypeProtocol_onceToken, &__block_literal_global_76);
  }

  v3 = structuredDataRepresentableTypeProtocol_value;

  return v3;
}

void __65__LNSystemEntityProtocol_structuredDataRepresentableTypeProtocol__block_invoke()
{
  v2 = +[LNSystemEntityProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.appintents.entity.StructuredDataRepresentableType"];
  v1 = structuredDataRepresentableTypeProtocol_value;
  structuredDataRepresentableTypeProtocol_value = v0;
}

+ (LNSystemEntityProtocol)urlRepresentableProtocol
{
  if (urlRepresentableProtocol_onceToken != -1)
  {
    dispatch_once(&urlRepresentableProtocol_onceToken, &__block_literal_global_74);
  }

  v3 = urlRepresentableProtocol_value;

  return v3;
}

void __50__LNSystemEntityProtocol_urlRepresentableProtocol__block_invoke()
{
  v2 = +[LNSystemEntityProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.appintents.entity.URLRepresentable"];
  v1 = urlRepresentableProtocol_value;
  urlRepresentableProtocol_value = v0;
}

+ (LNSystemEntityProtocol)persistentFileIdentifiableEntityProtocol
{
  if (persistentFileIdentifiableEntityProtocol_onceToken != -1)
  {
    dispatch_once(&persistentFileIdentifiableEntityProtocol_onceToken, &__block_literal_global_72);
  }

  v3 = persistentFileIdentifiableEntityProtocol_value;

  return v3;
}

void __66__LNSystemEntityProtocol_persistentFileIdentifiableEntityProtocol__block_invoke()
{
  v2 = +[LNSystemEntityProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.appintents.entity.PersistentFileIdentifiable"];
  v1 = persistentFileIdentifiableEntityProtocol_value;
  persistentFileIdentifiableEntityProtocol_value = v0;
}

+ (LNSystemEntityProtocol)indexedEntityProtocol
{
  if (indexedEntityProtocol_onceToken != -1)
  {
    dispatch_once(&indexedEntityProtocol_onceToken, &__block_literal_global_70);
  }

  v3 = indexedEntityProtocol_value;

  return v3;
}

void __47__LNSystemEntityProtocol_indexedEntityProtocol__block_invoke()
{
  v2 = +[LNSystemEntityProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.appintents.entity.Indexed"];
  v1 = indexedEntityProtocol_value;
  indexedEntityProtocol_value = v0;
}

+ (LNSystemEntityProtocol)updatableEntityProtocol
{
  if (updatableEntityProtocol_onceToken != -1)
  {
    dispatch_once(&updatableEntityProtocol_onceToken, &__block_literal_global_68);
  }

  v3 = updatableEntityProtocol_value;

  return v3;
}

void __49__LNSystemEntityProtocol_updatableEntityProtocol__block_invoke()
{
  v2 = +[LNSystemEntityProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.appintents.entity.Updatable"];
  v1 = updatableEntityProtocol_value;
  updatableEntityProtocol_value = v0;
}

+ (LNSystemEntityProtocol)uniqueEntityProtocol
{
  if (uniqueEntityProtocol_onceToken != -1)
  {
    dispatch_once(&uniqueEntityProtocol_onceToken, &__block_literal_global_66);
  }

  v3 = uniqueEntityProtocol_value;

  return v3;
}

void __46__LNSystemEntityProtocol_uniqueEntityProtocol__block_invoke()
{
  v2 = +[LNSystemEntityProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.appintents.entity.SingleEntity"];
  v1 = uniqueEntityProtocol_value;
  uniqueEntityProtocol_value = v0;
}

+ (LNSystemEntityProtocol)visualSearchOCRProtocol
{
  if (visualSearchOCRProtocol_onceToken != -1)
  {
    dispatch_once(&visualSearchOCRProtocol_onceToken, &__block_literal_global_64);
  }

  v3 = visualSearchOCRProtocol_value;

  return v3;
}

void __49__LNSystemEntityProtocol_visualSearchOCRProtocol__block_invoke()
{
  v2 = +[LNSystemEntityProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.appintents.entity.VisualSearchOCR"];
  v1 = visualSearchOCRProtocol_value;
  visualSearchOCRProtocol_value = v0;
}

+ (LNSystemEntityProtocol)visualSearchProtocol
{
  if (visualSearchProtocol_onceToken != -1)
  {
    dispatch_once(&visualSearchProtocol_onceToken, &__block_literal_global_62);
  }

  v3 = visualSearchProtocol_value;

  return v3;
}

void __46__LNSystemEntityProtocol_visualSearchProtocol__block_invoke()
{
  v2 = +[LNSystemEntityProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.appintents.entity.VisualSearch"];
  v1 = visualSearchProtocol_value;
  visualSearchProtocol_value = v0;
}

+ (LNSystemEntityProtocol)messageParticipantProtocol
{
  if (messageParticipantProtocol_onceToken != -1)
  {
    dispatch_once(&messageParticipantProtocol_onceToken, &__block_literal_global_60);
  }

  v3 = messageParticipantProtocol_value;

  return v3;
}

void __52__LNSystemEntityProtocol_messageParticipantProtocol__block_invoke()
{
  v2 = +[LNSystemEntityProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.appintents.entity.MessageParticipant"];
  v1 = messageParticipantProtocol_value;
  messageParticipantProtocol_value = v0;
}

+ (LNSystemEntityProtocol)messageGroupProtocol
{
  if (messageGroupProtocol_onceToken != -1)
  {
    dispatch_once(&messageGroupProtocol_onceToken, &__block_literal_global_58);
  }

  v3 = messageGroupProtocol_value;

  return v3;
}

void __46__LNSystemEntityProtocol_messageGroupProtocol__block_invoke()
{
  v2 = +[LNSystemEntityProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.appintents.entity.MessageGroup"];
  v1 = messageGroupProtocol_value;
  messageGroupProtocol_value = v0;
}

+ (LNSystemEntityProtocol)intentMessageProtocol
{
  if (intentMessageProtocol_onceToken != -1)
  {
    dispatch_once(&intentMessageProtocol_onceToken, &__block_literal_global_56);
  }

  v3 = intentMessageProtocol_value;

  return v3;
}

void __47__LNSystemEntityProtocol_intentMessageProtocol__block_invoke()
{
  v2 = +[LNSystemEntityProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.appintents.entity.IntentMessage"];
  v1 = intentMessageProtocol_value;
  intentMessageProtocol_value = v0;
}

+ (LNSystemEntityProtocol)mailboxProtocol
{
  if (mailboxProtocol_onceToken != -1)
  {
    dispatch_once(&mailboxProtocol_onceToken, &__block_literal_global_54);
  }

  v3 = mailboxProtocol_value;

  return v3;
}

void __41__LNSystemEntityProtocol_mailboxProtocol__block_invoke()
{
  v2 = +[LNSystemEntityProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.appintents.entity.Mailbox"];
  v1 = mailboxProtocol_value;
  mailboxProtocol_value = v0;
}

+ (LNSystemEntityProtocol)mailMessageProtocol
{
  if (mailMessageProtocol_onceToken != -1)
  {
    dispatch_once(&mailMessageProtocol_onceToken, &__block_literal_global_52);
  }

  v3 = mailMessageProtocol_value;

  return v3;
}

void __45__LNSystemEntityProtocol_mailMessageProtocol__block_invoke()
{
  v2 = +[LNSystemEntityProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.appintents.entity.MailMessage"];
  v1 = mailMessageProtocol_value;
  mailMessageProtocol_value = v0;
}

+ (LNSystemEntityProtocol)mailAddresseeProtocol
{
  if (mailAddresseeProtocol_onceToken != -1)
  {
    dispatch_once(&mailAddresseeProtocol_onceToken, &__block_literal_global_50);
  }

  v3 = mailAddresseeProtocol_value;

  return v3;
}

void __47__LNSystemEntityProtocol_mailAddresseeProtocol__block_invoke()
{
  v2 = +[LNSystemEntityProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.appintents.entity.MailAddressee"];
  v1 = mailAddresseeProtocol_value;
  mailAddresseeProtocol_value = v0;
}

+ (LNSystemEntityProtocol)mailAccountProtocol
{
  if (mailAccountProtocol_onceToken != -1)
  {
    dispatch_once(&mailAccountProtocol_onceToken, &__block_literal_global_48);
  }

  v3 = mailAccountProtocol_value;

  return v3;
}

void __45__LNSystemEntityProtocol_mailAccountProtocol__block_invoke()
{
  v2 = +[LNSystemEntityProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.appintents.entity.MailAccount"];
  v1 = mailAccountProtocol_value;
  mailAccountProtocol_value = v0;
}

+ (LNSystemEntityProtocol)assistantEntityProtocol
{
  if (assistantEntityProtocol_onceToken != -1)
  {
    dispatch_once(&assistantEntityProtocol_onceToken, &__block_literal_global_3258);
  }

  v3 = assistantEntityProtocol_value;

  return v3;
}

void __49__LNSystemEntityProtocol_assistantEntityProtocol__block_invoke()
{
  v2 = +[LNSystemEntityProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.appintents.entity.AssistantEntity"];
  v1 = assistantEntityProtocol_value;
  assistantEntityProtocol_value = v0;
}

@end