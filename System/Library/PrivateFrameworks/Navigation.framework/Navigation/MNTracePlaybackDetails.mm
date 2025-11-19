@interface MNTracePlaybackDetails
- (MNTracePlaybackDetails)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNTracePlaybackDetails

- (void)encodeWithCoder:(id)a3
{
  eventType = self->_eventType;
  v5 = a3;
  [v5 encodeInteger:eventType forKey:@"_eventType"];
  [v5 encodeObject:self->_tracePath forKey:@"_tracePath"];
  [v5 encodeDouble:@"_traceDuration" forKey:self->_traceDuration];
  [v5 encodeDouble:@"_currentPosition" forKey:self->_currentPosition];
  [v5 encodeObject:self->_bookmarks forKey:@"_bookmarks"];
  [v5 encodeInteger:self->_recordedBookmarkID forKey:@"_recordedBookmarkID"];
  [v5 encodeObject:self->_pedestrianTracePath forKey:@"_pedestrianTracePath"];
  [v5 encodeDouble:@"_pedestrianTraceStartRelativeTimestamp" forKey:self->_pedestrianTraceStartRelativeTimestamp];
}

- (MNTracePlaybackDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MNTracePlaybackDetails *)self init];
  if (v5)
  {
    v5->_eventType = [v4 decodeIntegerForKey:@"_eventType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_tracePath"];
    tracePath = v5->_tracePath;
    v5->_tracePath = v6;

    [v4 decodeDoubleForKey:@"_traceDuration"];
    v5->_traceDuration = v8;
    [v4 decodeDoubleForKey:@"_currentPosition"];
    v5->_currentPosition = v9;
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"_bookmarks"];
    bookmarks = v5->_bookmarks;
    v5->_bookmarks = v13;

    v5->_recordedBookmarkID = [v4 decodeIntegerForKey:@"_recordedBookmarkID"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_pedestrianTracePath"];
    pedestrianTracePath = v5->_pedestrianTracePath;
    v5->_pedestrianTracePath = v15;

    [v4 decodeDoubleForKey:@"_pedestrianTraceStartRelativeTimestamp"];
    v5->_pedestrianTraceStartRelativeTimestamp = v17;
    v18 = v5;
  }

  return v5;
}

@end