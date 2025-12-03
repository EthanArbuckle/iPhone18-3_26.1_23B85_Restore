@interface MNTracePlaybackDetails
- (MNTracePlaybackDetails)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNTracePlaybackDetails

- (void)encodeWithCoder:(id)coder
{
  eventType = self->_eventType;
  coderCopy = coder;
  [coderCopy encodeInteger:eventType forKey:@"_eventType"];
  [coderCopy encodeObject:self->_tracePath forKey:@"_tracePath"];
  [coderCopy encodeDouble:@"_traceDuration" forKey:self->_traceDuration];
  [coderCopy encodeDouble:@"_currentPosition" forKey:self->_currentPosition];
  [coderCopy encodeObject:self->_bookmarks forKey:@"_bookmarks"];
  [coderCopy encodeInteger:self->_recordedBookmarkID forKey:@"_recordedBookmarkID"];
  [coderCopy encodeObject:self->_pedestrianTracePath forKey:@"_pedestrianTracePath"];
  [coderCopy encodeDouble:@"_pedestrianTraceStartRelativeTimestamp" forKey:self->_pedestrianTraceStartRelativeTimestamp];
}

- (MNTracePlaybackDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MNTracePlaybackDetails *)self init];
  if (v5)
  {
    v5->_eventType = [coderCopy decodeIntegerForKey:@"_eventType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_tracePath"];
    tracePath = v5->_tracePath;
    v5->_tracePath = v6;

    [coderCopy decodeDoubleForKey:@"_traceDuration"];
    v5->_traceDuration = v8;
    [coderCopy decodeDoubleForKey:@"_currentPosition"];
    v5->_currentPosition = v9;
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"_bookmarks"];
    bookmarks = v5->_bookmarks;
    v5->_bookmarks = v13;

    v5->_recordedBookmarkID = [coderCopy decodeIntegerForKey:@"_recordedBookmarkID"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_pedestrianTracePath"];
    pedestrianTracePath = v5->_pedestrianTracePath;
    v5->_pedestrianTracePath = v15;

    [coderCopy decodeDoubleForKey:@"_pedestrianTraceStartRelativeTimestamp"];
    v5->_pedestrianTraceStartRelativeTimestamp = v17;
    v18 = v5;
  }

  return v5;
}

@end