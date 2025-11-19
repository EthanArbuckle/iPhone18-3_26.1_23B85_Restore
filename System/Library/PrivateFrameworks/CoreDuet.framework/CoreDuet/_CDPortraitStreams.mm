@interface _CDPortraitStreams
+ (id)allStreams;
@end

@implementation _CDPortraitStreams

+ (id)allStreams
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = [a1 topicStream];
  v8[0] = v3;
  v4 = [a1 entityStream];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end