@interface CKMessageContext
+ (id)selfContext;
- (id)_copyWithClass:(Class)a3 zone:(_NSZone *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation CKMessageContext

+ (id)selfContext
{
  v2 = objc_alloc_init(a1);
  v2[24] = 1;
  *(v2 + 13) = 0;
  v2[28] = 0;

  return v2;
}

- (id)_copyWithClass:(Class)a3 zone:(_NSZone *)a4
{
  if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    [CKMessageContext _copyWithClass:a2 zone:self];
  }

  v8 = [[(objc_class *)a3 allocWithZone:a4] init];
  v9 = [(CKMessageContext *)self chatContext];
  v10 = [v9 copyWithZone:a4];
  v11 = *(v8 + 1);
  *(v8 + 1) = v10;

  v12 = [(CKMessageContext *)self serviceName];
  v13 = [v12 copyWithZone:a4];
  v14 = *(v8 + 2);
  *(v8 + 2) = v13;

  *(v8 + 24) = [(CKMessageContext *)self isFromMe];
  *(v8 + 25) = [(CKMessageContext *)self isSpam];
  *(v8 + 26) = [(CKMessageContext *)self isSenderUnknown];
  *(v8 + 27) = [(CKMessageContext *)self isSenderUnauthenticated];
  *(v8 + 28) = [(CKMessageContext *)self isAudioMessage];
  return v8;
}

- (id)description
{
  v13 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = [(CKMessageContext *)self chatContext];
  v5 = [(CKMessageContext *)self serviceName];
  if ([(CKMessageContext *)self isFromMe])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(CKMessageContext *)self isSpam])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(CKMessageContext *)self isSenderUnknown])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(CKMessageContext *)self isSenderUnauthenticated])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if ([(CKMessageContext *)self isAudioMessage])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [v13 stringWithFormat:@"<%@, chatContext: %@, serviceName: %@, fromMe: %@, spam: %@, senderUnknown: %@, senderUnauthenticated: %@, audioMessage: %@>", v3, v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(CKMessageContext *)self _copyWithClass:v5 zone:a3];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(CKMessageContext *)self _copyWithClass:v5 zone:a3];
}

- (void)_copyWithClass:(uint64_t)a1 zone:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CKMessageContext.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"[cls isSubclassOfClass:[CKMessageContext class]]"}];
}

@end