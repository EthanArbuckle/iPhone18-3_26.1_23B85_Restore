@interface _ML3ValidatableDatabase
- (_ML3ValidatableDatabase)init;
- (_ML3ValidatableDatabase)initWithDatabasePath:(id)path;
@end

@implementation _ML3ValidatableDatabase

- (_ML3ValidatableDatabase)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"-init is invalid. use -initWithDatabasePath: instead."];

  return 0;
}

- (_ML3ValidatableDatabase)initWithDatabasePath:(id)path
{
  v15 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = _ML3ValidatableDatabase;
  v5 = [(_ML3ValidatableDatabase *)&v13 init];
  if (v5)
  {
    v6 = [pathCopy copy];
    v7 = *(v5 + 2);
    *(v5 + 2) = v6;

    *(v5 + 3) = 0;
    lastPathComponent = [pathCopy lastPathComponent];
    __sprintf_chk(label, 0, 0x100uLL, "com.apple.MusicLibrary.ValidationQueue.%s", [lastPathComponent UTF8String]);

    v9 = dispatch_queue_create(label, 0);
    v10 = *(v5 + 4);
    *(v5 + 4) = v9;

    v11 = [v5 hash];
    *(v5 + 1) = v11;
    dispatch_queue_set_specific(*(v5 + 4), "com.apple.MusicLibrary._ML3ValidationQueueIdentifierKey", v11, 0);
  }

  return v5;
}

@end