@interface IDSWRMMetricContainer
- (IDSWRMMetricContainer)init;
- (id)description;
- (void)resetMetric;
- (void)setMessageDeliveredDeliveryError:(unint64_t)a3;
- (void)setMessageDeliveredRTT:(unint64_t)a3;
- (void)setMessageDeliveredSize:(unint64_t)a3;
- (void)setMessageReceivedSize:(unint64_t)a3;
- (void)setMessageSentSize:(unint64_t)a3;
- (void)setStreamBytesReceived:(unint64_t)a3;
- (void)setStreamBytesSent:(unint64_t)a3;
- (void)setStreamPacketsReceived:(unint64_t)a3;
- (void)setStreamPacketsSent:(unint64_t)a3;
@end

@implementation IDSWRMMetricContainer

- (void)resetMetric
{
  self->_MessageDeliveredDeliveryError = -1;
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *&self->_MessageDeliveredRTT = v2;
  *&self->_MessageSentSize = v2;
  *&self->_StreamPacketsSent = v2;
  *&self->_StreamBytesSent = v2;
  *&self->_numMessageSentSize = 0u;
  *&self->_numMessageDeliveredRTT = 0u;
}

- (IDSWRMMetricContainer)init
{
  v5.receiver = self;
  v5.super_class = IDSWRMMetricContainer;
  v2 = [(IDSWRMMetricContainer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IDSWRMMetricContainer *)v2 resetMetric];
  }

  return v3;
}

- (id)description
{
  StreamBytesSent = self->_StreamBytesSent;
  StreamBytesReceived = self->_StreamBytesReceived;
  if (StreamBytesSent == -1)
  {
    StreamBytesSent = 0;
  }

  if (StreamBytesReceived == -1)
  {
    StreamBytesReceived = 0;
  }

  StreamPacketsSent = self->_StreamPacketsSent;
  StreamPacketsReceived = self->_StreamPacketsReceived;
  if (StreamPacketsSent == -1)
  {
    StreamPacketsSent = 0;
  }

  if (StreamPacketsReceived == -1)
  {
    StreamPacketsReceived = 0;
  }

  MessageSentSize = self->_MessageSentSize;
  MessageDeliveredSize = self->_MessageDeliveredSize;
  if (MessageSentSize == -1)
  {
    MessageSentSize = 0;
  }

  if (MessageDeliveredSize == -1)
  {
    MessageDeliveredSize = 0;
  }

  MessageDeliveredRTT = self->_MessageDeliveredRTT;
  MessageReceivedSize = self->_MessageReceivedSize;
  if (MessageDeliveredRTT == -1)
  {
    MessageDeliveredRTT = 0;
  }

  if (MessageReceivedSize == -1)
  {
    MessageReceivedSize = 0;
  }

  MessageDeliveredDeliveryError = self->_MessageDeliveredDeliveryError;
  if (MessageDeliveredDeliveryError == -1)
  {
    MessageDeliveredDeliveryError = 0;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"\nStreamBytesSent = %llu \nStreamBytesReceived = %llu \nStreamPacketsSent = %llu \nStreamPacketsReceived = %llu \nMessageSentSize = %llu \nMessageDeliveredSize = %llu \nMessageDeliveredRTT = %llu \nMessageReceivedSize = %llu \nCount of MessageDeliveredDeliveryError = %llu \n", StreamBytesSent, StreamBytesReceived, StreamPacketsSent, StreamPacketsReceived, MessageSentSize, MessageDeliveredSize, MessageDeliveredRTT, MessageReceivedSize, MessageDeliveredDeliveryError];
}

- (void)setStreamBytesSent:(unint64_t)a3
{
  StreamBytesSent = self->_StreamBytesSent;
  if (StreamBytesSent == -1)
  {
    StreamBytesSent = 0;
  }

  self->_StreamBytesSent = StreamBytesSent + a3;
}

- (void)setStreamBytesReceived:(unint64_t)a3
{
  StreamBytesReceived = self->_StreamBytesReceived;
  if (StreamBytesReceived == -1)
  {
    StreamBytesReceived = 0;
  }

  self->_StreamBytesReceived = StreamBytesReceived + a3;
}

- (void)setStreamPacketsSent:(unint64_t)a3
{
  StreamPacketsSent = self->_StreamPacketsSent;
  if (StreamPacketsSent == -1)
  {
    StreamPacketsSent = 0;
  }

  self->_StreamPacketsSent = StreamPacketsSent + a3;
}

- (void)setStreamPacketsReceived:(unint64_t)a3
{
  StreamPacketsReceived = self->_StreamPacketsReceived;
  if (StreamPacketsReceived == -1)
  {
    StreamPacketsReceived = 0;
  }

  self->_StreamPacketsReceived = StreamPacketsReceived + a3;
}

- (void)setMessageSentSize:(unint64_t)a3
{
  MessageSentSize = self->_MessageSentSize;
  if (MessageSentSize == -1)
  {
    self->_MessageSentSize = a3;
    self->_numMessageSentSize = 1;
  }

  else
  {
    numMessageSentSize = self->_numMessageSentSize;
    v5 = a3 + numMessageSentSize * MessageSentSize;
    ++numMessageSentSize;
    self->_MessageSentSize = v5 / numMessageSentSize;
    self->_numMessageSentSize = numMessageSentSize;
  }
}

- (void)setMessageDeliveredSize:(unint64_t)a3
{
  MessageDeliveredSize = self->_MessageDeliveredSize;
  if (MessageDeliveredSize == -1)
  {
    self->_MessageDeliveredSize = a3;
    self->_numMessageDeliveredSize = 1;
  }

  else
  {
    numMessageDeliveredSize = self->_numMessageDeliveredSize;
    v5 = a3 + numMessageDeliveredSize * MessageDeliveredSize;
    ++numMessageDeliveredSize;
    self->_MessageDeliveredSize = v5 / numMessageDeliveredSize;
    self->_numMessageDeliveredSize = numMessageDeliveredSize;
  }
}

- (void)setMessageDeliveredRTT:(unint64_t)a3
{
  MessageDeliveredRTT = self->_MessageDeliveredRTT;
  if (MessageDeliveredRTT == -1)
  {
    self->_MessageDeliveredRTT = a3;
    self->_numMessageDeliveredRTT = 1;
  }

  else
  {
    numMessageDeliveredRTT = self->_numMessageDeliveredRTT;
    v5 = a3 + numMessageDeliveredRTT * MessageDeliveredRTT;
    ++numMessageDeliveredRTT;
    self->_MessageDeliveredRTT = v5 / numMessageDeliveredRTT;
    self->_numMessageDeliveredRTT = numMessageDeliveredRTT;
  }
}

- (void)setMessageReceivedSize:(unint64_t)a3
{
  MessageReceivedSize = self->_MessageReceivedSize;
  if (MessageReceivedSize == -1)
  {
    self->_MessageReceivedSize = a3;
    self->_numMessageReceivedSize = 1;
  }

  else
  {
    numMessageReceivedSize = self->_numMessageReceivedSize;
    v5 = a3 + numMessageReceivedSize * MessageReceivedSize;
    ++numMessageReceivedSize;
    self->_MessageReceivedSize = v5 / numMessageReceivedSize;
    self->_numMessageReceivedSize = numMessageReceivedSize;
  }
}

- (void)setMessageDeliveredDeliveryError:(unint64_t)a3
{
  if (a3)
  {
    MessageDeliveredDeliveryError = self->_MessageDeliveredDeliveryError;
    v4 = __CFADD__(MessageDeliveredDeliveryError, 1);
    v5 = MessageDeliveredDeliveryError + 1;
    if (v4)
    {
      v5 = 1;
    }

    self->_MessageDeliveredDeliveryError = v5;
  }
}

@end