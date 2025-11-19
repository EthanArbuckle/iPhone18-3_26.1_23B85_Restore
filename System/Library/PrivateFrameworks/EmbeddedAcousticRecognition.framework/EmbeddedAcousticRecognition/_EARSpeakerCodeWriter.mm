@interface _EARSpeakerCodeWriter
@end

@implementation _EARSpeakerCodeWriter

- (void)setTrainingSpeakerCode:(uint64_t)a1 inferenceSpeakerCode:(NSObject *)a2 accumulatedGradient:nnetVersion:numFrames:trainingOffset:recognitionOffset:language:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1B501D000, a2, OS_LOG_TYPE_DEBUG, "Speaker code data is serialized, writing to file: %@", &v2, 0xCu);
}

@end