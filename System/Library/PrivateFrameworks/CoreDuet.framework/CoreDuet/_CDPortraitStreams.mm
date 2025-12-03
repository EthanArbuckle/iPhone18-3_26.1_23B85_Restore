@interface _CDPortraitStreams
+ (id)allStreams;
@end

@implementation _CDPortraitStreams

+ (id)allStreams
{
  v8[2] = *MEMORY[0x1E69E9840];
  topicStream = [self topicStream];
  v8[0] = topicStream;
  entityStream = [self entityStream];
  v8[1] = entityStream;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end